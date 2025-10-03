import '../database/app_database.dart';
import '../database/dao/level_dao.dart';
import '../database/dao/quest_dao.dart';

class LevelRepository {
  final QuestDao questDao;
  final LevelDao levelDao;

  LevelRepository(this.questDao, this.levelDao);

  Future<Level?> getLevel(int id) => levelDao.getLevelById(id);

  // Future<LevelProgress?> getLevelWithProgress(int levelId) async {
  //   final level = await levelDao.getLevelById(levelId);
  //   if (level == null) return null;
  //
  //   final totalXp = await questDao.totalXpForLevel(levelId);
  //   final earnedXp = await questDao.earnedXpForLevel(levelId);
  //
  //   return LevelProgress(level: level, totalXp: totalXp, earnedXp: earnedXp);
  // }

  /// Stream version: live updates
  // Stream<LevelProgress?> watchLevelWithProgress(int levelId) {
  //   final questsStream = questDao.watchQuestsWithProgress(levelId);
  //   final levelStream = levelDao.getLevelById(levelId).asStream();
  //
  //   return Rx.combineLatest2(levelStream, questsStream, (level, quests) {
  //     if (level == null) return null;
  //
  //     final totalXp = quests.fold<int>(0, (sum, q) => sum + q.quest.xpReward);
  //     final earnedXp = quests
  //         .where((q) => q.isCompleted)
  //         .fold(0, (sum, q) => sum + q.quest.xpReward);
  //
  //     return LevelProgress(level: level, totalXp: totalXp, earnedXp: earnedXp);
  //   });
  // }
}
