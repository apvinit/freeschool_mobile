import 'package:flutter/material.dart';
import 'package:freeschool_mobile/content/content_page.dart';
import 'package:freeschool_mobile/data.dart';
import 'package:freeschool_mobile/lesson/lesson.dart';
import 'package:get/get.dart';

class LessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integers'),
      ),
      body: LessonsList(),
    );
  }
}

class LessonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: lessons.length,
      itemBuilder: (_, index) => LessonsListTile(
        lesson: lessons[index],
      ),
      separatorBuilder: (_, __) => Divider(),
    );
  }
}

class LessonsListTile extends StatelessWidget {
  final Lesson lesson;

  LessonsListTile({@required this.lesson});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lesson.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        ...lesson.contents.map(
          (e) => ListTile(
            leading: Icon(Icons.play_arrow),
            title: Text(e.name),
            onTap: () {
              Get.to(ContentPage());
            },
          ),
        )
      ],
    );
  }
}
