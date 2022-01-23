import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/repositories/interfaces/iquestionnaire_repository.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entity.dart';

class QuestionnaireController extends ChangeNotifier {
  final IQuestionnaireRepository repository;
  final isRemote = true;
  var questionnaires = <QuestionnaireEntity>[];
  QuestionnaireController({
    required this.repository,
  }) {
    getQuestionnaires();
  }

  Future<void> getQuestionnaires() async {
    if (isRemote) {
      questionnaires = await repository.getAllQuestionnairesJson();
    } else {
      questionnaires = await repository.getAllQuestionnaires();
    }
    notifyListeners();
  }
}
