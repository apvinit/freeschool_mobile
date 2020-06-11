import 'package:freeschool_mobile/content/content.dart';

class Lesson {
  int id;
  String title;
  List<Content> contents;
  int courseID;

  Lesson({
    this.id,
    this.title,
    this.contents,
    this.courseID,
  });

  factory Lesson.fromMap(Map<String,dynamic> map) {
    return Lesson(
      id: map['id'],
      title: map['title']
    );
  } 
}
