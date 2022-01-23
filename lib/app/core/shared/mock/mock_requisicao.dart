class MockRequest {
  String questions =
      '{ "questionario": { "id": 1,"titulo": "Preferências pessoais","questoes": [{"id": 1,"titulo": "Livro favorito","descricao": "Qual é o livro que você mais gostou até hoje?"},{"id": 2,"titulo": "Filme favorito","descricao": "Qual é o filme que você mais gostou até hoje?"}]}}';

  Future<String> get getQuestions async {
    await Future.delayed(const Duration(seconds: 1));
    return questions;
  }
}
