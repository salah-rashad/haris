import 'package:get_it/get_it.dart';

import '../../features/home/logic/home_bloc.dart';
import '../database/app_database.dart';
import '../database/dao/level_dao.dart';
import '../database/dao/quest_dao.dart';
import '../database/dao/user_progress_dao.dart';
import '../repositories/level_repo.dart';
import '../repositories/progress_repo.dart';
import '../repositories/quest_repo.dart';
import '../services/seeder_service.dart';

final sl = GetIt.instance; // sl = service locator

Future<void> initDependencies() async {
  final db = AppDatabase(
    onCreate: (db) async {
      // Seed data on first run
      await SeederService(db).seed();
    },
  );

  // Register DB + DAOs
  sl.registerLazySingleton<AppDatabase>(() => db);
  sl.registerLazySingleton<LevelDao>(() => LevelDao(db));
  sl.registerLazySingleton<QuestDao>(() => QuestDao(db));
  sl.registerLazySingleton<UserProgressDao>(() => UserProgressDao(db));

  /*** Register Repositories ***/
  sl.registerLazySingleton<ProgressRepository>(
    () => ProgressRepository(sl(), sl(), sl()),
  );
  sl.registerLazySingleton<LevelRepository>(() => LevelRepository(sl(), sl()));
  sl.registerLazySingleton<QuestRepository>(() => QuestRepository(sl()));

  // Register Blocs/Cubits
  // sl.registerLazySingleton<LevelBloc>(() => LevelBloc(sl(), sl()));
  sl.registerLazySingleton<HomeBloc>(() => HomeBloc(sl(), sl(), sl()));
}
