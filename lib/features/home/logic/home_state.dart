part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeError extends HomeState {
  final String error;

  HomeError(this.error);
}

final class HomeUpdated extends HomeState {
  final Level level;
  final LevelProgress levelProgress;
  final List<QuestWithProgress> quests;

  HomeUpdated({
    required this.level,
    required this.levelProgress,
    required this.quests,
  });
}
