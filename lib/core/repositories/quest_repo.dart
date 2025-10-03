import '../database/dao/quest_dao.dart';

class QuestRepository {
  final QuestDao questDao;

  QuestRepository(this.questDao);

  // Future<void> toggleQuestCompletion(int questId, bool completed) =>
  //     questDao.setQuestCompleted(questId, completed);
}
