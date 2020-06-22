class Content {
  int id;
  String title;
  String description;
  int lessonID;
  String type;
  String data;
  bool draft;

  Content({
    this.id,
    this.title,
    this.description,
    this.lessonID,
    this.type,
    this.data,
    this.draft,
  });

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      type: map['content_type'],
      data: map['data'],
      draft: map['draft'],
    );
  }
}