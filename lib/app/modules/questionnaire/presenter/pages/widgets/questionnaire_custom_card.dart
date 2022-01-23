import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:avaliacao_checkmob/app/utils/routes/main_routes.dart';
import 'package:flutter/material.dart';

class QuestionnaireCustomCard extends StatelessWidget {
  final QuestionnaireEntity content;
  final int index;

  const QuestionnaireCustomCard({
    Key? key,
    required this.content,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AppRoutes.questionnaire, arguments: content);
      },
      child: Card(
        child: Container(
          height: 120,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Questionário - ${index + 1}",
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                content.title,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
