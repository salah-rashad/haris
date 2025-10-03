// import 'package:drift/drift.dart';
//
// import '../database/app_database.dart';
// import '../database/daos/quest_dao.dart';
//
// class DailyResetService {
//   final QuestDao questDao;
//   final AppDatabase db;
//
//   DailyResetService(this.questDao, this.db);
//
//   /// Called on app start
//   Future<void> handleDailyReset() async {
//     final today = DateTime.now();
//     final todayMidnight = DateTime(today.year, today.month, today.day);
//
//     // final lastRun = await db
//     //     .customSelect(
//     //       'SELECT value FROM meta WHERE key = "last_reset"',
//     //       readsFrom: {},
//     //     )
//     //     .getSingleOrNull();
//
//     // check if reset already done today
//     final lastRun =
//         await (db.meta.select()..where((tbl) => tbl.key.equals('last_reset')))
//             .getSingleOrNull();
//
//     if (lastRun != null) {
//       final lastDate = DateTime.parse(lastRun.value);
//       if (lastDate.isAtSameMomentAs(todayMidnight)) {
//         return; // already reset today
//       }
//     }
//
//     // Perform reset
//     await questDao.resetDailyLogs();
//
//     // await db.customStatement(
//     //   'INSERT OR REPLACE INTO meta (key, value) VALUES ("last_reset", ?)',
//     //   [todayMidnight.toIso8601String()],
//     // );
//
//     // update last reset date
//     await db.meta.insert().insert(
//       MetaCompanion.insert(
//         key: 'last_reset',
//         value: todayMidnight.toIso8601String(),
//       ),
//       mode: InsertMode.insertOrReplace,
//     );
//   }
// }
