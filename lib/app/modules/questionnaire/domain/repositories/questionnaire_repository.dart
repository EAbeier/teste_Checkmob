import 'package:dio/dio.dart';

import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/repositories/interfaces/iquestionnaire_repository.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/infra/datasources/remote_questionnaires_datasource.dart';

class QuestionnaireRepository implements IQuestionnaireRepository {
  final RemoteQuestionnaireDatasource datasource;
  QuestionnaireRepository(
    this.datasource,
  );
  final List<QuestionnaireEntity> _questionnaires = [];

  @override
  Future<List<QuestionnaireEntity>> getAllQuestionnairesJson() async {
    var response = await datasource.getAllQuestionnaires();
    _questionnaires.add(QuestionnaireEntity.fromJson(response));
    return _questionnaires;
  }

  @override
  Future<List<QuestionnaireEntity>> getAllQuestionnaires() async {
    await getAllQuestionnairesJson();
    return _questionnaires;
  }
}
