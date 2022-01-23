import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/question/answred_question_entity.dart';

class CompleteQuestionnaireEntity {
  final int id;
  final String title;
  final List<AnswredQuestionEntity> questions;
  CompleteQuestionnaireEntity({
    required this.id,
    required this.title,
    required this.questions,
  });

  int get numberOfQuestions {
    return questions.length;
  }
}
