import 'dart:convert';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/question/question.dart';

class QuestionnaireEntitie {
  final int id;
  final String title;
  final List<Question> questoes;
  QuestionnaireEntitie({
    required this.id,
    required this.title,
    required this.questoes,
  });

  int get numberOfQuestions {
    return questoes.length;
  }

  static QuestionnaireEntitie fromJson(String json) {
    Map<String, dynamic> data = jsonDecode(json);
    final id = data['questionario']['id'] ?? 0;
    final title = data['questionario']['titulo'];
    List list = data['questionario']['questoes'];
    final questoes = list.map(Question.fromJson).toList();
    return QuestionnaireEntitie(id: id, title: title, questoes: questoes);
  }
}
