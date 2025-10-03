import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/models/quest_with_progress.dart';
import '../../../../core/utils/extensions.dart';

class QuestTile extends StatelessWidget {
  const QuestTile({super.key, required this.data, this.onComplete});

  final QuestWithProgress data;
  final VoidCallback? onComplete;

  Quest get quest => data.quest;

  bool get isCompleted => data.isCompleted;

  @override
  Widget build(BuildContext context) {
    // final doneCount = questLog?.progressCount ?? 0;
    // final progress = doneCount / quest.requiredPerDay;
    // final progressText = '$doneCount/${quest.requiredPerDay}';
    final xpRewardText = '+${quest.xpReward} XP';

    final disabledColor = Color.alphaBlend(
      context.colorScheme.outline.withValues(alpha: 0.3),
      context.colorScheme.surface,
    );

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: isCompleted
              ? disabledColor
              : context.colorScheme.outlineVariant,
        ),
      ),
      child: ListTile(
        onTap: isCompleted ? null : onComplete,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18.0),
        minVerticalPadding: 22.0,
        titleAlignment: ListTileTitleAlignment.top,
        leading: Icon(
          quest.type.icon,
          color: isCompleted ? disabledColor : null,
          size: 24,
        ),
        title: Text(
          quest.title,
          style: context.textTheme.titleMedium?.copyWith(
            color: isCompleted ? disabledColor : null,
            decoration: isCompleted ? TextDecoration.lineThrough : null,
            decorationColor: isCompleted ? disabledColor : null,
            fontStyle: isCompleted ? FontStyle.italic : null,
          ),
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (quest.description != null) ...[
              const SizedBox(height: 8),
              Text(
                quest.description ?? '',
                style: context.textTheme.bodySmall?.copyWith(
                  color: isCompleted
                      ? disabledColor
                      : context.colorScheme.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                  decoration: isCompleted ? TextDecoration.lineThrough : null,
                  decorationColor: isCompleted ? disabledColor : null,
                ),
              ),
            ],
          ],
        ),
        trailing: AbsorbPointer(
          child: Chip(
            padding: EdgeInsets.zero,
            label: isCompleted
                ? Icon(
                    LucideIcons.check,
                    color: context.colorScheme.primaryFixedDim,
                  )
                : Text(xpRewardText),
            shape: const StadiumBorder(
              side: BorderSide(color: Colors.transparent),
            ),
            backgroundColor: context.colorScheme.surfaceContainerLow,
            labelStyle: context.textTheme.labelSmall?.apply(
              color: context.colorScheme.outline,
            ),
          ),
        ),
      ),
    );
  }
}
