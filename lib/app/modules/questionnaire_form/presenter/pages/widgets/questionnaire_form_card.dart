import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/question/answred_question_entity.dart';
import 'package:flutter/material.dart';

import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/question/question.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire_form/presenter/controller/questionnaire_form_controller.dart';

class QuestionnaireFormCard extends StatelessWidget {
  final Question content;
  final int index;
  final QuestionnaireFormController controller;

  const QuestionnaireFormCard({
    Key? key,
    required this.content,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Questão ${index + 1}",
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              content.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              content.description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                final answer = AnswredQuestionEntity(
                  id: content.id,
                  title: content.title,
                  description: content.description,
                  resposta: value,
                );
                controller.addAnswer(answer);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "resposta",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
