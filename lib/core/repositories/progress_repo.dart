import '../database/app_database.dart';
import '../database/dao/level_dao.dart';
import '../database/dao/quest_dao.dart';
import '../database/dao/user_progress_dao.dart';
import '../models/level_up_data.dart';
import '../models/level_with_progress.dart';

class ProgressRepository {
  final LevelDao levelDao;
  final QuestDao questDao;
  final UserProgressDao progressDao;

  ProgressRepository(this.levelDao, this.questDao, this.progressDao);

  Stream<int> watchCurrentLevelId() => progressDao.watchCurrentLevelId();

  Stream<LevelProgressAndQuests> watchLevelProgressAndQuests(int levelId) {
    final questsProgress = questDao.watchQuestsWithProgress(levelId);
    return questsProgress.map((quests) {
      final totalXp = quests.fold<int>(0, (sum, q) => sum + q.quest.xpReward);
      final earnedXp = quests
          .where((q) => q.isCompleted)
          .fold<int>(0, (sum, q) => sum + q.quest.xpReward);

      return LevelProgressAndQuests(
        levelProgress: LevelProgress(earnedXp: earnedXp, totalXp: totalXp),
        quests: quests,
      );
    });
  }

  Future<LevelUpData?> checkAndLevelUp(Level level) async {
    // 1. Get current level progress
    final progress = await levelDao.getLevelProgress(level.id);

    // 2. Check if level is complete
    if (progress.isCompleted) return null;

    // 3. Get next level
    final nextLevel = await levelDao.getNextLevel(level.index);

    // 4. Update user progress
    if (nextLevel != null) {
      await progressDao.updateCurrentLevelId(nextLevel.id);
    }

    return LevelUpData(
      oldLevel: level,
      newLevel: nextLevel,
      totalXp: progress.totalXp,
      bonusXp: 0, // TODO: Add bonus xp
    );
  }

  Future<void> completeQuestAndGainXp(int questId, int xpReward) async {
    await questDao.setQuestCompleted(questId, true);
    await progressDao.incrementTotalXp(xpReward);
  }
}
