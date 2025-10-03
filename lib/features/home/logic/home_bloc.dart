import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/database/app_database.dart';
import '../../../core/models/app_events.dart';
import '../../../core/models/level_up_data.dart';
import '../../../core/models/level_with_progress.dart';
import '../../../core/models/quest_with_progress.dart';
import '../../../core/repositories/level_repo.dart';
import '../../../core/repositories/progress_repo.dart';
import '../../../core/repositories/quest_repo.dart';
import '../../../core/services/app_event_bus.dart';
import '../../../core/utils/logger.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProgressRepository progressRepository;
  final LevelRepository levelRepository;
  final QuestRepository questRepository;

  StreamSubscription? _levelChangeSubscription;
  StreamSubscription? _progressSubscription;

  HomeBloc(this.progressRepository, this.levelRepository, this.questRepository)
    : super(HomeInitial()) {
    on<Initialize>(_onInitialize);
    on<UpdateLevel>(_onLevelUpdated);
    on<UpdateDataWithProgress>(_onProgressUpdated);
    on<CompleteQuest>(_onCompleteQuest);
    on<CheckLevelCompletion>(_onCheckLevelCompletion);
    on<LevelUp>(_onLevelUp);
    on<UpdateHomeError>(_onError);
  }

  Future<void> _onInitialize(Initialize event, Emitter<HomeState> emit) async {
    await _levelChangeSubscription?.cancel();

    emit(HomeLoading());

    _levelChangeSubscription = progressRepository.watchCurrentLevelId().listen((
      newLevelId,
    ) async {
      final level = await levelRepository.getLevel(newLevelId);

      if (level == null) {
        add(UpdateHomeError("Couldn't find level with id: $newLevelId"));
      } else {
        add(UpdateLevel(level));
      }
    }, onError: (e, s) => addError(e, s));
  }

  Future<void> _onLevelUpdated(
    UpdateLevel event,
    Emitter<HomeState> emit,
  ) async {
    final level = event.level;

    await _progressSubscription?.cancel();
    _progressSubscription = progressRepository
        .watchLevelProgressAndQuests(level.id)
        .listen((data) {
          add(
            UpdateDataWithProgress(
              level: level,
              levelProgress: data.levelProgress,
              quests: data.quests,
            ),
          );
        });
  }

  void _onProgressUpdated(
    UpdateDataWithProgress event,
    Emitter<HomeState> emit,
  ) {
    emit(
      HomeUpdated(
        level: event.level,
        levelProgress: event.levelProgress,
        quests: event.quests,
      ),
    );
  }

  Future<void> _onCompleteQuest(
    CompleteQuest event,
    Emitter<HomeState> emit,
  ) async {
    await progressRepository.completeQuestAndGainXp(
      event.quest.id,
      event.quest.xpReward,
    );
    add(CheckLevelCompletion());
  }

  Future<void> _onCheckLevelCompletion(
    CheckLevelCompletion event,
    Emitter<HomeState> emit,
  ) async {
    final state = this.state;
    if (state is! HomeUpdated) return;

    if (state.levelProgress.isCompleted) {
      final data = await progressRepository.checkAndLevelUp(state.level);
      if (data == null) return;
      add(LevelUp(data));
    }
  }

  void _onLevelUp(LevelUp event, Emitter<HomeState> emit) {
    final data = event.data;
    Logger.data(
      emoji: '🌟',
      "Level Up!",
      "${data.newLevel?.index} - ${data.newLevel?.title}",
    );
    AppEventBus().addToQueue(LevelUpEvent(data));
  }

  void _onError(UpdateHomeError event, Emitter<HomeState> emit) {
    emit(HomeError(event.error));
  }

  @override
  Future<void> close() {
    _levelChangeSubscription?.cancel();
    _progressSubscription?.cancel();
    return super.close();
  }
}
