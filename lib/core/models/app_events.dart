import 'dart:async';

import 'package:flutter/material.dart';

import '../../features/shared/dialogs/level_up_dialog.dart';
import 'level_up_data.dart';

abstract class AppEvent {
  FutureOr<void> call(BuildContext context);
}

class LevelUpEvent extends AppEvent {
  final LevelUpData data;

  LevelUpEvent(this.data);

  @override
  FutureOr<void> call(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return LevelUpDialog(
          oldLevel: data.oldLevel,
          newLevel: data.newLevel,
          totalXp: data.totalXp,
          bonusXp: data.bonusXp,
        );
      },
    );
  }
}

class AchievementUnlockedEvent extends AppEvent {
  final String title;

  AchievementUnlockedEvent(this.title);

  @override
  FutureOr<void> call(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: const Text('Achievement unlocked!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class ErrorToastEvent extends AppEvent {
  final String message;

  ErrorToastEvent(this.message);

  @override
  FutureOr<void> call(BuildContext context) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
