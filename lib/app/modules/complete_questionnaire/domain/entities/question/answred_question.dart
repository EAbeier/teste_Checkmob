class AnswredQuestion {
  final int id;
  final String title;
  final String descricao;
  final String resposta;
  AnswredQuestion({
    required this.id,
    required this.title,
    required this.descricao,
    required this.resposta,
  });

  AnswredQuestion copyWith({
    String? resposta,
  }) {
    return AnswredQuestion(
      id: id,
      title: title,
      descricao: descricao,
      resposta: resposta ?? this.resposta,
    );
  }
}
