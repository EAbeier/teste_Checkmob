import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entitie.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/repositories/interfaces/iquestionnaire_repository.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/infra/datasources/remote_questionnaires_datasource.dart';

class QuestionnaireRepository implements IQuestionnaireRepository {
  final datasource = RemoteQuestionnaireDatasource();
  final List<QuestionnaireEntitie> _questionnaires = [];
  @override
  Future<void> getAllQuestionnairesJson() async {
    var response = await datasource.getAllQuestionnaires();
    _questionnaires.add(QuestionnaireEntitie.fromJson(response));
  }

  Future<List<QuestionnaireEntitie>> getAllQuestionnaires() async {
    await getAllQuestionnairesJson();
    return _questionnaires;
  }
}
