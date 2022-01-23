import 'package:avaliacao_checkmob/app/core/shared/mock/mock_requisicao.dart';

class RemoteQuestionnaireDatasource {
  final server = MockRequest();
  List list = [];
  Future<String> getAllQuestionnaires() async {
    return await server.getQuestions;
  }
}
