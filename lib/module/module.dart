import 'package:freeschool_mobile/lesson/lesson.dart';

class Module {
  int id;
  String title;
  String description;
  List<Lesson> lessons;
  bool draft;

  Module({this.id, this.title, this.description, this.lessons, this.draft});

  factory Module.fromMap(Map<String, dynamic> map) {
    return Module(
      id: map["id"],
      title: map['title'],
      description: map['description'],
      draft: map['draft'],
    );
  }
}
