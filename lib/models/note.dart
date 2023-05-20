class Note {
  int id;
  String title;
  String description;
  DateTime createdAt;

  Note (
    this.id,
    this.title,
    this.description,
    this.createdAt,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt.toString(),
    };
  }

}