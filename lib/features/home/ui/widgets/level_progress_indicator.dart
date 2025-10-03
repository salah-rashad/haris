import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/extensions.dart';
import '../../logic/home_bloc.dart';

class LevelProgressIndicator extends StatelessWidget {
  const LevelProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();

    return BlocBuilder<HomeBloc, HomeState>(
      bloc: bloc,
      builder: (context, state) {
        int id = 0;
        String title = "";
        double progress = 0;
        int earnedXp = 0;
        int requiredXp = 0;

        if (state is HomeUpdated) {
          id = state.level.id;
          title = state.level.title;
          progress = state.levelProgress.progress;
          earnedXp = state.levelProgress.earnedXp;
          requiredXp = state.levelProgress.totalXp;
        }
        return Padding(
          padding: const EdgeInsets.only(top: 22.0),
          child: Column(
            spacing: 12.0,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Level $id: $title", style: context.textTheme.titleLarge),
              TweenAnimationBuilder(
                duration: const Duration(milliseconds: 600),
                tween: Tween<double>(begin: progress, end: progress),
                curve: Curves.easeInOut,
                builder: (context, value, child) {
                  return LinearProgressIndicator(
                    value: value,
                    minHeight: 12,
                    color: context.colorScheme.primaryFixedDim,
                    backgroundColor: context.colorScheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(99),
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: RichText(
                  text: TextSpan(
                    style: context.textTheme.labelSmall?.apply(
                      color: context.colorScheme.primary,
                    ),
                    children: [
                      WidgetSpan(
                        child: AnimatedDigitWidget(
                          value: earnedXp,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutCubicEmphasized,
                          textStyle: context.textTheme.labelSmall?.apply(
                            color: context.colorScheme.primary,
                            heightDelta: -0.2,
                          ),
                        ),
                      ),
                      const TextSpan(text: ' / '),
                      TextSpan(text: '$requiredXp XP'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
