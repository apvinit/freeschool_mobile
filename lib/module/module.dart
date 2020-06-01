import 'package:freeschool_mobile/lesson/lesson.dart';

class Module {
  int id;
  String name;
  String description;
  List<Lesson> lessons;

  Module({this.id, this.name, this.description, this.lessons});
}
