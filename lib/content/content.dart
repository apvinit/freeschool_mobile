class Content {
  int id;
  String name;
  String description;
  int lessonID;
  ContentType type;
  String data;

  Content({
    this.id,
    this.name,
    this.description,
    this.lessonID,
    this.type,
    this.data,
  });
}

enum ContentType { Video, Text }
