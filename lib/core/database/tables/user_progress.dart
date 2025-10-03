import 'package:drift/drift.dart';

@DataClassName('UserProgress')
class UserProgresses extends Table {
  IntColumn get id => integer().withDefault(const Constant(1))();

  IntColumn get currentLevelId => integer().withDefault(const Constant(1))();

  IntColumn get totalEarnedXp => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
