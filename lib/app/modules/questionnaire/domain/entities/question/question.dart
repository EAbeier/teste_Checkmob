class Question {
  final int id;
  final String title;
  final String descricao;
  Question({
    required this.id,
    required this.title,
    required this.descricao,
  });

  static Question fromJson(dynamic json) {
    return Question(
      id: json['id'],
      title: json['titulo'],
      descricao: json['descricao'],
    );
  }
}
