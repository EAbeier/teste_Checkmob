class AnswredQuestionEntity {
  final int id;
  final String title;
  final String description;
  final String resposta;
  AnswredQuestionEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.resposta,
  });

  AnswredQuestionEntity copyWith({
    String? resposta,
  }) {
    return AnswredQuestionEntity(
      id: id,
      title: title,
      description: description,
      resposta: resposta ?? this.resposta,
    );
  }
}
