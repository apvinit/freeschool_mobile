import 'package:flutter/material.dart';
import 'package:freeschool_mobile/course/course.dart';
import 'package:freeschool_mobile/topics/topics_page.dart';
import 'package:freeschool_mobile/widgets/custom_divider.dart';
import 'package:get/get.dart';

import '../data.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Math'),
      ),
      body: CourseList(),
    );
  }
}

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: courses.length,
      itemBuilder: (_, index) => CourseListTile(
        course: courses[index],
      ),
      separatorBuilder: (_, __) => CustomDivider(),
    );
  }
}

class CourseListTile extends StatelessWidget {
  @required
  final Course course;

  CourseListTile({@required this.course});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(8),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.grey[100],
        child: Icon(Icons.multiline_chart),
      ),
      title: Text(
        course.name,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onTap: () {
        Get.to(TopicsPage());
      },
    );
  }
}
