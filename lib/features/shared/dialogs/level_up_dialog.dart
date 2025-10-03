import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/database/app_database.dart';
import '../../../core/utils/extensions.dart';

class LevelUpDialog extends StatelessWidget {
  final Level oldLevel;
  final Level? newLevel;
  final int totalXp;
  final int? bonusXp;

  const LevelUpDialog({
    super.key,
    required this.oldLevel,
    required this.newLevel,
    required this.totalXp,
    required this.bonusXp,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              LucideIcons.star,
              size: 48,
              color: context.colorScheme.primaryFixedDim,
            ),
            const SizedBox(height: 22),
            Text("Level Up!", style: context.textTheme.titleLarge),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: context.textTheme.titleMedium?.apply(
                  color: context.colorScheme.primaryFixedDim,
                ),
                children: [
                  TextSpan(text: "Level ${oldLevel.index} "),
                  if (newLevel != null) ...[
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Icon(
                          LucideIcons.moveRight,
                          size: 16,
                          color: context.colorScheme.primaryFixedDim,
                        ),
                      ),
                    ),
                    TextSpan(text: " Level ${newLevel!.index}"),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text("Total XP: $totalXp", style: context.textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text(
              "Great job! Keep going on your journey.",
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.apply(fontSizeDelta: 2),
            ),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Rewards Unlocked",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade900,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer.withValues(
                      alpha: 0.15,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    LucideIcons.listChecks,
                    color: context.colorScheme.primaryFixedDim,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    "You unlocked new daily quests!",
                    style: context.textTheme.bodyMedium?.apply(
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (bonusXp != null)
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer.withValues(
                        alpha: 0.15,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      LucideIcons.award,
                      color: context.colorScheme.primaryFixedDim,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "+$bonusXp XP Bonus",
                    style: TextStyle(
                      color: context.colorScheme.primaryFixedDim,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
