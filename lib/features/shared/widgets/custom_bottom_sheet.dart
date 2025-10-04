import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/utils/extensions.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    this.padding,
    required this.builder,
    this.actionButton,
  });

  final EdgeInsetsGeometry? padding;
  final WidgetBuilder builder;
  final WidgetBuilder? actionButton;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final padding =
        this.padding ??
        const EdgeInsets.symmetric(horizontal: 22.0, vertical: 24.0);

    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      constraints: BoxConstraints(
        minWidth: 600,
        maxWidth: 800,
        minHeight: 400,
        maxHeight: screenSize.height * 0.8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTopBar(context),
          const Divider(height: 0),
          Expanded(
            child: SingleChildScrollView(
              padding: padding,
              child: builder(context),
            ),
          ),
          if (actionButton != null) ...[
            const Divider(height: 0),
            Padding(padding: padding, child: actionButton!(context)),
          ],
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: IconButton(
              icon: const Icon(LucideIcons.x),
              onPressed: () => Navigator.pop(context),
              color: context.colorScheme.outline,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 40,
              height: 6,
              decoration: ShapeDecoration(
                color: context.colorScheme.surfaceDim,
                shape: const StadiumBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
