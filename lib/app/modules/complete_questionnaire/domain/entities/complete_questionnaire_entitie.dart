import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/question/answred_question.dart';

class CompleteQuestionnaireEntitie {
  final int id;
  final String title;
  final List<AnswredQuestion> questoes;
  CompleteQuestionnaireEntitie({
    required this.id,
    required this.title,
    required this.questoes,
  });

  int get numberOfQuestions {
    return questoes.length;
  }
}
