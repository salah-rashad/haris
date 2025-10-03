import 'package:drift/drift.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:lucide_icons/lucide_icons.dart';

import 'levels.dart';

enum QuestType {
  salat,
  morningAdhkar,
  eveningAdhkar,
  quran,
  charity,
  family,
  fasting;

  IconData get icon {
    // switch (this) {
    //   case QuestType.salat:
    //     return LucideIcons.mosque;
    //   case QuestType.morningAdhkar:
    //     return Icons.shield;
    //   case QuestType.eveningAdhkar:
    //     return Icons.shield_moon;
    //   case QuestType.quran:
    //     return Icons.book;
    //   case QuestType.sleep:
    //     return Icons.bedtime;
    //   case QuestType.charity:
    //     return;
    //   case QuestType.family:
    //     throw UnimplementedError();
    //   case QuestType.fasting:
    //     throw UnimplementedError();
    // }

    return switch (this) {
      QuestType.salat => LucideIcons.shield,
      QuestType.morningAdhkar => LucideIcons.sun,
      QuestType.eveningAdhkar => LucideIcons.moonStar,
      QuestType.quran => LucideIcons.book,
      QuestType.charity => LucideIcons.helpingHand,
      QuestType.family => LucideIcons.users,
      QuestType.fasting => LucideIcons.calendar,
    };
  }
}

class Quests extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get levelId =>
      integer().references(Levels, #id, onDelete: KeyAction.cascade)();

  TextColumn get title => text()();

  TextColumn get description => text().nullable()();

  IntColumn get type => intEnum<QuestType>()();

  IntColumn get xpReward => integer().withDefault(const Constant(0))();

  BoolColumn get completed => boolean().withDefault(const Constant(false))();
}
