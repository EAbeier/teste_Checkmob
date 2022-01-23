import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entity.dart';
import 'package:avaliacao_checkmob/app/utils/routes/main_routes.dart';
import 'package:flutter/material.dart';

class HistoricCard extends StatelessWidget {
  final CompleteQuestionnaireEntity questionnaire;
  final int questionnaireIndex;
  const HistoricCard({
    Key? key,
    required this.questionnaire,
    required this.questionnaireIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.completeQuestionnaire,
        arguments: questionnaire,
      ),
      child: Card(
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            children: [
              Text(
                "${questionnaireIndex + 1} - ${questionnaire.title}",
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
