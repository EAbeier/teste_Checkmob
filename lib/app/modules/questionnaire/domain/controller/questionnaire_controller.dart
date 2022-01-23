import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entitie.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/repositories/questionnaire_repository.dart';
import 'package:flutter/material.dart';

class QuestionnaireController extends ChangeNotifier {
  var questionnaires = <QuestionnaireEntitie>[];
  final repository = QuestionnaireRepository();

  Future<void> getQuestionnaires() async {
    questionnaires = await repository.getAllQuestionnaires();
    notifyListeners();
  }
}
