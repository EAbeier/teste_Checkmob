import 'package:flutter/material.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entitie.dart';

class CompleteQuestionnaireCard extends StatelessWidget {
  final int index;
  const CompleteQuestionnaireCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = ModalRoute.of(context)!.settings.arguments
        as CompleteQuestionnaireEntitie;
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pergunta:",
                style: Theme.of(context).primaryTextTheme.bodyText2),
            const SizedBox(
              height: 10,
            ),
            Text(
              content.questoes[index].descricao,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Resposta:",
                style: Theme.of(context).primaryTextTheme.bodyText2),
            const SizedBox(
              height: 10,
            ),
            Text(
              content.questoes[index].resposta,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
