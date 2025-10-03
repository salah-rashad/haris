import 'quest_with_progress.dart';

class LevelProgress {
  final int earnedXp;
  final int totalXp;

  const LevelProgress({required this.earnedXp, required this.totalXp});

  double get progress => totalXp == 0 ? 0 : earnedXp / totalXp;

  bool get isCompleted => earnedXp >= totalXp;
}

class LevelProgressAndQuests {
  final LevelProgress levelProgress;
  final List<QuestWithProgress> quests;

  LevelProgressAndQuests({required this.levelProgress, required this.quests});
}
