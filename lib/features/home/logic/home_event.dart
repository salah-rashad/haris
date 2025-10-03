part of 'home_bloc.dart';

abstract class HomeEvent {}

class Initialize extends HomeEvent {}

class UpdateLevel extends HomeEvent {
  final Level level;

  UpdateLevel(this.level);
}

class UpdateDataWithProgress extends HomeEvent {
  final Level level;
  final LevelProgress levelProgress;
  final List<QuestWithProgress> quests;

  UpdateDataWithProgress({
    required this.level,
    required this.levelProgress,
    required this.quests,
  });
}

class CompleteQuest extends HomeEvent {
  final Quest quest;

  CompleteQuest(this.quest);
}

class CheckLevelCompletion extends HomeEvent {}

class LevelUp extends HomeEvent {
  final LevelUpData data;

  LevelUp(this.data);
}

class UpdateHomeError extends HomeEvent {
  final String error;

  UpdateHomeError(this.error);
}
