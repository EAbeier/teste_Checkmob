import 'dart:convert';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/question/question.dart';

class QuestionnaireEntity {
  final int id;
  final String title;
  final List<Question> questions;
  QuestionnaireEntity({
    required this.id,
    required this.title,
    required this.questions,
  });

  int get numberOfQuestions {
    return questions.length;
  }

  static QuestionnaireEntity fromJson(String json) {
    Map<String, dynamic> data = jsonDecode(json);
    final id = data['questionario']['id'] ?? 0;
    final title = data['questionario']['titulo'];
    List list = data['questionario']['questoes'];
    final questions = list.map(Question.fromJson).toList();
    return QuestionnaireEntity(id: id, title: title, questions: questions);
  }
}
