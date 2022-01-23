import 'package:avaliacao_checkmob/app/core/shared/widgets/app_bar/custom_appbar.dart';
import 'package:avaliacao_checkmob/app/modules/historic/presenter/controller/historic_controller.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire_form/presenter/controller/questionnaire_form_controller.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire_form/presenter/pages/widgets/questionnaire_form_card.dart';
import 'package:avaliacao_checkmob/app/utils/routes/main_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionnaireForm extends StatelessWidget {
  const QuestionnaireForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content =
        ModalRoute.of(context)!.settings.arguments as QuestionnaireEntity;
    final controller = QuestionnaireFormController(
      id: content.id,
      title: content.title,
    );
    return Scaffold(
      appBar: CustomAppBar(
        title: content.title,
        canGoBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: content.questions.length,
                itemBuilder: (BuildContext context, int index) {
                  return QuestionnaireFormCard(
                    content: content.questions[index],
                    index: index,
                    controller: controller,
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () {
                final entity = controller.saveFormulary();
                final historicController =
                    Provider.of<HistoricController>(context, listen: false);
                historicController.addCompleteQuestionnaire(entity);
                Navigator.of(context).popAndPushNamed(
                    AppRoutes.completeQuestionnaire,
                    arguments: entity);
              },
              child: Text(
                "Salvar Respostas",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
