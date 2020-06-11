class Content {
  int id;
  String title;
  String description;
  int lessonID;
  ContentType type;
  String data;

  Content({
    this.id,
    this.title,
    this.description,
    this.lessonID,
    this.type,
    this.data,
  });

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      id: map['id'],
      title: map['title'],
      data: map['data'],
    );
  }
}

enum ContentType { Video, Text }
