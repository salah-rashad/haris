import '../database/app_database.dart';

class LevelUpData {
  final Level oldLevel;
  final Level? newLevel;
  final int totalXp;
  final int? bonusXp;

  LevelUpData({
    required this.oldLevel,
    required this.newLevel,
    required this.totalXp,
    this.bonusXp,
  });
}
