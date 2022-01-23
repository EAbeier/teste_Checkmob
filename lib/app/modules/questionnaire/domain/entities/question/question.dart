class Question {
  final int id;
  final String title;
  final String description;
  Question({
    required this.id,
    required this.title,
    required this.description,
  });

  static Question fromJson(dynamic json) {
    return Question(
      id: json['id'],
      title: json['titulo'],
      description: json['descricao'],
    );
  }
}
