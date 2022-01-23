import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entitie.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/question/answred_question.dart';
import 'package:flutter/widgets.dart';

class HistoricController extends ChangeNotifier {
  final _completeQuestionnaires = <CompleteQuestionnaireEntitie>[];

  List<CompleteQuestionnaireEntitie> get completeQuestionnaires {
    return _completeQuestionnaires;
  }

  void addCompleteQuestionnaire(CompleteQuestionnaireEntitie answer) {
    _completeQuestionnaires.add(answer);
    notifyListeners();
  }

  int get completeQuestionnairesLength {
    return _completeQuestionnaires.length;
  }

  CompleteQuestionnaireEntitie getCompleteQuestionnaire(int index) {
    return _completeQuestionnaires[index];
  }
}
