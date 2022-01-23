import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entity.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/question/answred_question_entity.dart';

class QuestionnaireFormController {
  final int id;
  final String title;
  final List<AnswredQuestionEntity> questions = [];
  QuestionnaireFormController({
    required this.id,
    required this.title,
  });

  void addAnswer(AnswredQuestionEntity answer) {
    final index = questions.indexWhere((element) => element.id == answer.id);
    if (index == -1) {
      questions.add(answer);
    } else {
      final questao = questions.elementAt(index);
      questions[index] = questao.copyWith(resposta: answer.resposta);
    }
  }

  CompleteQuestionnaireEntity saveFormulary() {
    final answeredQuestionnaire = CompleteQuestionnaireEntity(
      id: id,
      title: title,
      questions: questions,
    );

    return answeredQuestionnaire;
  }
}
