import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entity.dart';
import 'package:flutter/widgets.dart';

class HistoricController extends ChangeNotifier {
  final _completeQuestionnaires = <CompleteQuestionnaireEntity>[];

  List<CompleteQuestionnaireEntity> get completeQuestionnaires {
    return _completeQuestionnaires;
  }

  void addCompleteQuestionnaire(CompleteQuestionnaireEntity answer) {
    _completeQuestionnaires.add(answer);
    notifyListeners();
  }

  int get completeQuestionnairesLength {
    return _completeQuestionnaires.length;
  }

  CompleteQuestionnaireEntity getCompleteQuestionnaire(int index) {
    return _completeQuestionnaires[index];
  }
}
