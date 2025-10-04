import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/models/quest_with_progress.dart';
import '../../../../core/utils/extensions.dart';
import '../../../shared/modals/quest_details_bottom_sheet.dart';

class QuestTile extends StatelessWidget {
  const QuestTile({super.key, required this.data, this.onComplete});

  final QuestWithProgress data;
  final VoidCallback? onComplete;

  Quest get quest => data.quest;

  bool get isCompleted => data.isCompleted;

  @override
  Widget build(BuildContext context) {
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
        onTap: () => _showDetails(context),
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
                style: context.textTheme.bodyMedium?.copyWith(
                  color: isCompleted
                      ? disabledColor
                      : context.colorScheme.onSurfaceVariant,
                  fontStyle: isCompleted ? FontStyle.italic : null,
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
            visualDensity: VisualDensity.compact,
            labelPadding: EdgeInsetsDirectional.only(
              start: 8,
              end: isCompleted ? 0 : 8,
            ),
            shape: const StadiumBorder(
              side: BorderSide(color: Colors.transparent),
            ),
            backgroundColor: context.colorScheme.surfaceContainerLow,
            onDeleted: isCompleted ? () {} : null,
            deleteIcon: Icon(LucideIcons.check, color: disabledColor),
            label: Text('+${quest.xpReward} XP'),
            labelStyle: context.textTheme.labelMedium?.apply(
              color: isCompleted ? disabledColor : context.colorScheme.outline,
            ),
          ),
        ),
      ),
    );
  }

  Future _showDetails(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return QuestDetailsBottomSheet(
          questWithProgress: data,
          onCompletePressed: onComplete,
        );
      },
    );
  }
}
