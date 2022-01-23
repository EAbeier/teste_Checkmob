import 'package:avaliacao_checkmob/app/core/shared/mock/mock_requisicao.dart';
import 'package:dio/dio.dart';

class RemoteQuestionnaireDatasource {
  RemoteQuestionnaireDatasource();
  Future<dynamic> getAllQuestionnaires() async {
    final response = await MockRequest().getQuestions;

    return response;
  }
}
