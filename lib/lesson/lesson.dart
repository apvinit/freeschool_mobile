import 'package:freeschool_mobile/content/content.dart';

class Lesson {
  int id;
  String title;
  String description;
  List<Content> contents;
  int courseID;
  bool draft;

  Lesson({
    this.id,
    this.title,
    this.description,
    this.contents,
    this.courseID,
    this.draft,
  });

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      draft: map['draft'],
      contents: (map['contents'] as List)?.map((e) => Content.fromMap(e))?.toList() ?? []
    );
  }
}
