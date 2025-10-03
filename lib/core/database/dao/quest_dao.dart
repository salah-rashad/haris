import 'dart:async';

import 'package:drift/drift.dart';

import '../../models/quest_with_progress.dart';
import '../app_database.dart';
import '../tables/quest_progress.dart';
import '../tables/quests.dart';

part 'quest_dao.g.dart';

@DriftAccessor(tables: [Quests, QuestProgresses])
class QuestDao extends DatabaseAccessor<AppDatabase> with _$QuestDaoMixin {
  QuestDao(super.db);

  Stream<List<QuestWithProgress>> watchQuestsWithProgress(int levelId) {
    final query = select(quests).join([
      leftOuterJoin(
        questProgresses,
        questProgresses.questId.equalsExp(quests.id),
      ),
    ])..where(quests.levelId.equals(levelId));

    return query.watch().map((rows) {
      return rows.map((row) {
        final quest = row.readTable(quests);
        final progress = row.readTableOrNull(questProgresses);

        return QuestWithProgress(
          quest: quest,
          isCompleted: progress?.isCompleted ?? false,
          completedAt: progress?.completedAt,
        );
      }).toList();
    });
  }

  Future<int> setQuestCompleted(int questId, bool completed) {
    return into(questProgresses).insertOnConflictUpdate(
      QuestProgressesCompanion(
        questId: Value(questId),
        isCompleted: Value(completed),
        completedAt: Value(completed ? DateTime.now() : null),
      ),
    );
  }
}
