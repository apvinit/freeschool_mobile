import 'package:freeschool_mobile/content/content.dart';

class Lesson {
  int id;
  String name;
  List<Content> contents;
  int courseID;

  Lesson({
    this.id,
    this.name,
    this.contents,
    this.courseID,
  });
}
