import '../database/app_database.dart';

class QuestWithProgress {
  final Quest quest;
  final bool isCompleted;
  final DateTime? completedAt;

  QuestWithProgress({
    required this.quest,
    required this.isCompleted,
    this.completedAt,
  });
}
