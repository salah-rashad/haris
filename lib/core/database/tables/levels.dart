import 'package:drift/drift.dart';

class Levels extends Table {
  IntColumn get id => integer().autoIncrement()();

  // Order of the level
  IntColumn get index => integer().unique()();

  TextColumn get title => text()();
}
