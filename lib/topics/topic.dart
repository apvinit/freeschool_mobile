import 'package:freeschool_mobile/lesson/lesson.dart';

class Topic {
  int id;
  String name;
  String description;
  List<Lesson> lessons;

  Topic({this.id, this.name, this.description, this.lessons});
}
