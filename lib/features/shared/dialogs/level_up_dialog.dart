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
      child: SingleChildScrollView(
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
            Text("Level Up!", style: context.textTheme.headlineMedium),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.primaryFixedDim,
                ),
                children: [
                  TextSpan(text: "Level ${oldLevel.index} "),
                  if (newLevel != null) ...[
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Icon(
                          LucideIcons.moveRight,
                          size: 18,
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
            Text(
              "Total XP: $totalXp",
              style: context.textTheme.bodyMedium?.apply(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 22),
            Text(
              "Great job! Keep going on your journey.",
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge?.apply(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Rewards Unlocked",
                style: context.textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: context.colorScheme.secondaryContainer.withValues(
                      alpha: 0.5,
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
                    style: context.textTheme.bodyMedium,
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
                      color: context.colorScheme.secondaryContainer.withValues(
                        alpha: 0.5,
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
                    style: context.textTheme.labelLarge?.apply(
                      color: context.colorScheme.primaryFixedDim,
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
