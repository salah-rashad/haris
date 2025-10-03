import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/quests.dart';
import '../tables/user_progress.dart';

part 'user_progress_dao.g.dart';

@DriftAccessor(tables: [Quests, UserProgresses])
class UserProgressDao extends DatabaseAccessor<AppDatabase>
    with _$UserProgressDaoMixin {
  UserProgressDao(super.db);

  Stream<int> watchCurrentLevelId() {
    final query = (selectOnly(userProgresses)
      ..addColumns([userProgresses.currentLevelId])
      ..limit(1));
    return query
        .map((row) => row.read(userProgresses.currentLevelId) ?? 1)
        .watchSingle()
        .distinct();
  }

  Future<UserProgress?> getProgress() {
    final query = select(userProgresses)..limit(1);
    return query.getSingleOrNull();
  }

  Future<int> incrementTotalXp(int xp) {
    final query = update(userProgresses)..where((u) => u.id.equals(1));
    return query.write(
      UserProgressesCompanion.custom(
        totalEarnedXp: userProgresses.totalEarnedXp + Constant(xp),
      ),
    );
  }

  Future<int> updateCurrentLevelId(int newLevelId) {
    final query = update(userProgresses)..where((u) => u.id.equals(1));
    return query.write(
      UserProgressesCompanion(currentLevelId: Value(newLevelId)),
    );
  }
}
