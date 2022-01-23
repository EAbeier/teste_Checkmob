import 'package:avaliacao_checkmob/app/modules/historic/domain/entities/historic_entitie.dart';
import 'package:avaliacao_checkmob/app/modules/historic/presenter/pages/widgets/historic_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Historic extends StatefulWidget {
  const Historic({Key? key}) : super(key: key);

  @override
  State<Historic> createState() => _HistoricState();
}

class _HistoricState extends State<Historic> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HistoricController>(context);
    return ListView.builder(
      itemCount: controller.completeQuestionnairesLength,
      itemBuilder: (context, index) {
        return Center(
          child: HistoricCard(
            questionnaire: controller.getCompleteQuestionnaire(index),
            questionnaireIndex: index,
          ),
        );
      },
    );
  }
}
