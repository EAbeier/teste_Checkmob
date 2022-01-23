import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entitie.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/presenter/pages/complete_questionnaire.dart';
import 'package:avaliacao_checkmob/app/utils/routes/main_routes.dart';
import 'package:flutter/material.dart';

import 'package:avaliacao_checkmob/app/modules/historic/domain/entities/historic_entitie.dart';

class HistoricCard extends StatelessWidget {
  final CompleteQuestionnaireEntitie questionnaire;
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
