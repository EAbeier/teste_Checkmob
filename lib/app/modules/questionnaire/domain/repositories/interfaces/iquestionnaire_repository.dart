import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entity.dart';

abstract class IQuestionnaireRepository {
  Future<List<QuestionnaireEntity>> getAllQuestionnairesJson();

  Future<List<QuestionnaireEntity>> getAllQuestionnaires();
}
