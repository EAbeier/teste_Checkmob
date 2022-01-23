import 'package:avaliacao_checkmob/app/modules/questionnaire/presenter/controller/questionnaire_controller.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/presenter/pages/widgets/questionnaire_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({Key? key}) : super(key: key);

  @override
  State<Questionnaire> createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuestionnaireController>(context);
    return ListView.builder(
      itemCount: controller.questionnaires.length,
      itemBuilder: (_, index) {
        return QuestionnaireCustomCard(
          content: controller.questionnaires[index],
          index: index,
        );
      },
    );
  }
}
