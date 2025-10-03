import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/home_bloc.dart';
import 'quest_tile.dart';

class QuestsList extends StatelessWidget {
  const QuestsList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return switch (state) {
          HomeInitial() => const SizedBox.shrink(),
          HomeLoading() => buildLoading(),
          HomeUpdated() => buildQuestsList(bloc, state),
          HomeError() => buildError(state),
        };
      },
    );
  }

  Widget buildQuestsList(HomeBloc bloc, HomeUpdated state) {
    return ListView.builder(
      itemCount: state.quests.length,
      itemBuilder: (context, index) {
        final data = state.quests[index];

        return QuestTile(
          data: data,
          onComplete: () => bloc.add(CompleteQuest(data.quest)),
        );
      },
    );
  }

  Widget buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget buildError(HomeError state) {
    return Center(child: Text("Error: ${state.error}"));
  }
}
