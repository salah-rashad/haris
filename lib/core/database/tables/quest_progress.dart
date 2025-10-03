import 'package:drift/drift.dart';

import 'quests.dart';

@DataClassName('QuestProgress')
class QuestProgresses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get questId =>
      integer().references(Quests, #id, onDelete: KeyAction.cascade)();

  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();

  DateTimeColumn get completedAt => dateTime().nullable()();
}
