import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/utils/extensions.dart';
import 'widgets/level_progress_indicator.dart';
import 'widgets/quests_list.dart';
import 'widgets/user_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        titleTextStyle: context.textTheme.headlineSmall,
        leadingWidth: 72,
        leading: const UserAvatar(),
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: context.colorScheme.surface,
        actions: [
          IconButton(
            tooltip: 'Notifications',
            icon: const Icon(LucideIcons.bell),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          spacing: 16.0,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LevelProgressIndicator(),
            Text("Today's Quests", style: context.textTheme.headlineSmall),
            const Expanded(child: QuestsList()),
          ],
        ),
      ),
    );
  }
}
