import 'package:avaliacao_checkmob/app/core/shared/widgets/app_bar/custom_appbar.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/domain/entities/complete_questionnaire_entity.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/presenter/pages/widgets/complete_questionnaire_card.dart';
import 'package:flutter/material.dart';

class CompleteQuestionnaire extends StatelessWidget {
  const CompleteQuestionnaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = ModalRoute.of(context)!.settings.arguments
        as CompleteQuestionnaireEntity;
    return Scaffold(
      appBar: CustomAppBar(title: content.title, canGoBack: true),
      body: ListView.builder(
        itemCount: content.numberOfQuestions,
        itemBuilder: (BuildContext context, int index) {
          return CompleteQuestionnaireCard(index: index);
        },
      ),
    );
  }
}
