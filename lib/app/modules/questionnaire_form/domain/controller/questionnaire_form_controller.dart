import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entitie.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/question/answred_question.dart';
import 'package:avaliacao_checkmob/app/modules/historic/domain/entities/historic_entitie.dart';

class QuestionnaireFormController {
  final int id;
  final String title;
  final List<AnswredQuestion> questoes = [];
  QuestionnaireFormController({
    required this.id,
    required this.title,
  });

  void addAnswer(AnswredQuestion answer) {
    final index = questoes.indexWhere((element) => element.id == answer.id);
    if (index == -1) {
      questoes.add(answer);
    } else {
      final questao = questoes.elementAt(index);
      questoes[index] = questao.copyWith(resposta: answer.resposta);
    }
  }

  CompleteQuestionnaireEntitie saveFormulary() {
    final answeredQuestionnaire = CompleteQuestionnaireEntitie(
      id: id,
      title: title,
      questoes: questoes,
    );

    return answeredQuestionnaire;
  }
}
