import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'dao/level_dao.dart';
import 'dao/quest_dao.dart';
import 'tables/levels.dart';
import 'tables/quest_progress.dart';
import 'tables/quests.dart';
import 'tables/user_progress.dart';

part 'app_database.g.dart';
part 'database_extensions.dart';

typedef OnDatabaseCreate = Future<void> Function(AppDatabase db);

@DriftDatabase(
  tables: [UserProgresses, Levels, Quests, QuestProgresses],
  daos: [LevelDao, QuestDao],
)
class AppDatabase extends _$AppDatabase {
  final OnDatabaseCreate? onCreate;

  AppDatabase({this.onCreate}) : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await onCreate?.call(this);
    },
  );

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'haris.sqlite'));
    try {
      file.deleteSync();
    } catch (_) {}
    return NativeDatabase.createInBackground(file, logStatements: false);
  });
}
