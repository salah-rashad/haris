import 'package:drift/drift.dart';

import '../database/app_database.dart';
import '../database/tables/quests.dart';
import '../utils/logger.dart';

class SeederService {
  final AppDatabase db;

  SeederService(this.db);

  Future<void> seed() async {
    final data = _seedData();

    await db.userProgresses.insert().insert(
      UserProgressesCompanion.insert(
        currentLevelId: const Value(1),
        totalEarnedXp: const Value(0),
      ),
    );

    await Future.forEach(data.entries, (element) async {
      final level = element.key;
      final quests = element.value;

      final levelId = await db.levels.insert().insert(
        LevelsCompanion.insert(title: level.title, index: level.index),
      );

      for (final quest in quests) {
        await db.quests.insert().insert(
          QuestsCompanion.insert(
            levelId: levelId,
            title: quest.title,
            type: quest.type,
            description: Value(quest.description),
            completed: Value(quest.completed),
            xpReward: Value(quest.xpReward),
            // requiredPerDay: Value(quest.requiredPerDay),
            // requiredDays: Value(quest.requiredDays),
          ),
        );
      }
    });

    Logger.green(emoji: '💾', name: "Seeder", "Initial data seeded.");
  }
}

Map<Level, List<Quest>> _seedData() {
  return {
    const Level(id: 1, index: 1, title: 'Foundation'): [
      const Quest(
        id: 1,
        levelId: 1,
        title: 'Pray',
        description: "Pray 5 Salats for 1 day",
        type: QuestType.salat,
        completed: false,
        xpReward: 500,
      ),
      const Quest(
        id: 2,
        levelId: 1,
        title: 'Morning Adhkar',
        description: "Read Adhkar in the morning for 1 day",
        type: QuestType.morningAdhkar,
        completed: false,
        xpReward: 100,
      ),
    ],
    const Level(id: 2, index: 2, title: 'Growth'): [
      const Quest(
        id: 3,
        levelId: 2,
        title: 'Evening Adhkar',
        description: "Read Evening Adhkar for 1 day",
        type: QuestType.eveningAdhkar,
        completed: false,
        xpReward: 150,
      ),
      const Quest(
        id: 4,
        levelId: 2,
        title: 'Qur’an Reading',
        description: "Read Qur’an for 10 minutes",
        type: QuestType.quran,
        completed: false,
        xpReward: 300,
      ),
    ],
    const Level(id: 3, index: 3, title: 'Consistency'): [
      const Quest(
        id: 5,
        levelId: 3,
        title: 'Pray',
        description: "Pray 5 Salats daily for 3 days",
        type: QuestType.salat,
        completed: false,
        xpReward: 900,
      ),
      const Quest(
        id: 6,
        levelId: 3,
        title: 'Morning Adhkar',
        description: "Read Morning Adhkar for 3 days",
        type: QuestType.morningAdhkar,
        completed: false,
        xpReward: 300,
      ),
      const Quest(
        id: 7,
        levelId: 3,
        title: 'Charity',
        description: "Give small charity once",
        type: QuestType.charity,
        completed: false,
        xpReward: 400,
      ),
    ],
    const Level(id: 4, index: 4, title: 'Discipline'): [
      const Quest(
        id: 8,
        levelId: 4,
        title: 'Qur’an Reading',
        description: "Read 1 page of Qur’an daily for 3 days",
        type: QuestType.quran,
        completed: false,
        xpReward: 600,
      ),
      const Quest(
        id: 9,
        levelId: 4,
        title: 'Evening Adhkar',
        description: "Read Evening Adhkar for 3 days",
        type: QuestType.eveningAdhkar,
        completed: false,
        xpReward: 450,
      ),
      const Quest(
        id: 10,
        levelId: 4,
        title: 'Friday Sunnah',
        description: "Read Surah Al-Kahf on Friday",
        type: QuestType.quran,
        completed: false,
        xpReward: 700,
      ),
    ],
    const Level(id: 5, index: 5, title: 'Dedication'): [
      const Quest(
        id: 11,
        levelId: 5,
        title: 'Tahajjud',
        description: "Pray 2 rak‘ahs of Tahajjud once",
        type: QuestType.salat,
        completed: false,
        xpReward: 1000,
      ),
      const Quest(
        id: 12,
        levelId: 5,
        title: 'Pray',
        description: "Pray 5 Salats daily for 5 days",
        type: QuestType.salat,
        completed: false,
        xpReward: 1500,
      ),
      const Quest(
        id: 13,
        levelId: 5,
        title: 'Charity',
        description: "Give charity twice",
        type: QuestType.charity,
        completed: false,
        xpReward: 600,
      ),
    ],
    const Level(id: 6, index: 6, title: 'Strength'): [
      const Quest(
        id: 14,
        levelId: 6,
        title: 'Qur’an Reading',
        description: "Read 2 pages of Qur’an daily for 5 days",
        type: QuestType.quran,
        completed: false,
        xpReward: 1200,
      ),
      const Quest(
        id: 15,
        levelId: 6,
        title: 'Morning Adhkar',
        description: "Read Morning Adhkar for 5 days",
        type: QuestType.morningAdhkar,
        completed: false,
        xpReward: 700,
      ),
      const Quest(
        id: 16,
        levelId: 6,
        title: 'Visit Family',
        description: "Call or visit family once",
        type: QuestType.family,
        completed: false,
        xpReward: 800,
      ),
    ],
    const Level(id: 7, index: 7, title: 'Excellence'): [
      const Quest(
        id: 17,
        levelId: 7,
        title: 'Pray Sunnah',
        description: "Pray Sunnah before/after obligatory prayers for 3 days",
        type: QuestType.salat,
        completed: false,
        xpReward: 1400,
      ),
      const Quest(
        id: 18,
        levelId: 7,
        title: 'Charity',
        description: "Give charity three times",
        type: QuestType.charity,
        completed: false,
        xpReward: 1000,
      ),
      const Quest(
        id: 19,
        levelId: 7,
        title: 'Fasting',
        description: "Fast 1 voluntary day",
        type: QuestType.fasting,
        completed: false,
        xpReward: 1500,
      ),
    ],
    const Level(id: 8, index: 8, title: 'Perseverance'): [
      const Quest(
        id: 20,
        levelId: 8,
        title: 'Qur’an Reading',
        description: "Read 5 pages daily for 5 days",
        type: QuestType.quran,
        completed: false,
        xpReward: 2000,
      ),
      const Quest(
        id: 21,
        levelId: 8,
        title: 'Evening Adhkar',
        description: "Read Evening Adhkar for 7 days",
        type: QuestType.eveningAdhkar,
        completed: false,
        xpReward: 1200,
      ),
      const Quest(
        id: 22,
        levelId: 8,
        title: 'Help Others',
        description: "Help someone in need twice",
        type: QuestType.charity,
        completed: false,
        xpReward: 1000,
      ),
    ],
    const Level(id: 9, index: 9, title: 'Resilience'): [
      const Quest(
        id: 23,
        levelId: 9,
        title: 'Tahajjud',
        description: "Pray 2 rak‘ahs of Tahajjud for 3 nights",
        type: QuestType.salat,
        completed: false,
        xpReward: 2500,
      ),
      const Quest(
        id: 24,
        levelId: 9,
        title: 'Pray',
        description: "Pray 5 Salats daily for 7 days",
        type: QuestType.salat,
        completed: false,
        xpReward: 3000,
      ),
      const Quest(
        id: 25,
        levelId: 9,
        title: 'Qur’an Reading',
        description: "Read 10 pages of Qur’an across 7 days",
        type: QuestType.quran,
        completed: false,
        xpReward: 2200,
      ),
    ],
    const Level(id: 10, index: 10, title: 'Mastery'): [
      const Quest(
        id: 26,
        levelId: 10,
        title: 'Fasting',
        description: "Fast 3 voluntary days",
        type: QuestType.fasting,
        completed: false,
        xpReward: 4000,
      ),
      const Quest(
        id: 27,
        levelId: 10,
        title: 'Tahajjud',
        description: "Pray Tahajjud 2 rak‘ahs for 5 nights",
        type: QuestType.salat,
        completed: false,
        xpReward: 3500,
      ),
      const Quest(
        id: 28,
        levelId: 10,
        title: 'Qur’an Reading',
        description: "Read 1 Juz’ in total within 7 days",
        type: QuestType.quran,
        completed: false,
        xpReward: 5000,
      ),
      const Quest(
        id: 29,
        levelId: 10,
        title: 'Charity',
        description: "Give charity five times",
        type: QuestType.charity,
        completed: false,
        xpReward: 3000,
      ),
    ],
  };
}
