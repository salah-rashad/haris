import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/database/app_database.dart';
import '../../../core/models/quest_with_progress.dart';
import '../../../core/utils/extensions.dart';
import '../widgets/custom_bottom_sheet.dart';

class QuestDetailsBottomSheet extends StatelessWidget {
  const QuestDetailsBottomSheet({
    super.key,
    required this.questWithProgress,
    this.onCompletePressed,
  });

  final QuestWithProgress questWithProgress;
  final VoidCallback? onCompletePressed;

  Quest get quest => questWithProgress.quest;

  bool get isCompleted => questWithProgress.isCompleted;

  DateTime? get completedAt => questWithProgress.completedAt;

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(quest.title, style: context.textTheme.headlineSmall),
                const Spacer(),
                buildXpChip(context),
              ],
            ),
            if (quest.description != null) ...[
              const SizedBox(height: 8),
              Text(
                quest.description ?? '',
                style: context.textTheme.bodyMedium?.apply(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
            const SizedBox(height: 32),
            Text("Guidance/Instructions", style: context.textTheme.titleMedium),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                """
1. Complete the quest
2. Earn the XP
3. Get rewards
4. Share with friends
5. Repeat""",
                style: context.textTheme.bodyMedium?.apply(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        );
      },
      actionButton: (context) {
        return ElevatedButton(
          onPressed: isCompleted
              ? null
              : () {
                  onCompletePressed?.call();
                  Navigator.pop(context);
                },
          child: Text(isCompleted ? 'Completed' : 'Mark as Completed'),
        );
      },
    );
  }

  Chip buildXpChip(BuildContext context) {
    return Chip(
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      onDeleted: isCompleted ? () {} : null,
      labelPadding: EdgeInsetsDirectional.only(
        start: 8,
        end: isCompleted ? 0 : 8,
      ),
      deleteIcon: Icon(
        LucideIcons.check,
        color: context.colorScheme.primaryFixedDim,
      ),
      label: Text('+${quest.xpReward} XP'),
      shape: const StadiumBorder(side: BorderSide(color: Colors.transparent)),
      backgroundColor: context.colorScheme.secondaryContainer.withValues(
        alpha: 0.5,
      ),
      labelStyle: context.textTheme.labelLarge?.apply(
        color: context.colorScheme.primaryFixedDim,
      ),
    );
  }
}
