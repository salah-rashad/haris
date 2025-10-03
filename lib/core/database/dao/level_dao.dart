import 'package:drift/drift.dart';

import '../../models/level_with_progress.dart';
import '../app_database.dart';
import '../tables/levels.dart';
import '../tables/quest_progress.dart';
import '../tables/quests.dart';

part 'level_dao.g.dart';

@DriftAccessor(tables: [Levels, Quests, QuestProgresses])
class LevelDao extends DatabaseAccessor<AppDatabase> with _$LevelDaoMixin {
  LevelDao(super.db);

  Future<Level?> getLevelById(int id) {
    return (select(levels)..where((l) => l.id.equals(id))).getSingleOrNull();
  }

  Future<LevelProgress> getLevelProgress(int levelId) async {
    final query = (select(quests)
      ..join([
        innerJoin(
          questProgresses,
          questProgresses.questId.equalsExp(quests.id),
        ),
      ])
      ..where((q) => q.levelId.equals(levelId)));
    final rows = await query.get();
    int totalXp = rows.fold(0, (sum, q) => sum + q.xpReward);
    int earnedXp = rows
        .where((q) => q.completed)
        .fold(0, (sum, q) => sum + q.xpReward);
    return LevelProgress(totalXp: totalXp, earnedXp: earnedXp);
  }

  Future<Level?> getNextLevel(int levelIndex) async {
    return (select(levels)
          ..where((l) => l.index.isBiggerThanValue(levelIndex))
          ..orderBy([(l) => OrderingTerm.asc(l.index)])
          ..limit(1))
        .getSingleOrNull();
  }
}
