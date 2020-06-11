import 'package:flutter/material.dart';
import 'package:freeschool_mobile/course/course.dart';
import 'package:freeschool_mobile/module/module_page.dart';
import 'package:freeschool_mobile/services/remote.dart';
import 'package:freeschool_mobile/widgets/custom_divider.dart';
import 'package:get/get.dart';

class CoursesPage extends StatelessWidget {
  final int categoryID;

  CoursesPage({@required this.categoryID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: CourseList(
        categoryID: categoryID,
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  final int categoryID;

  CourseList({@required this.categoryID});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
      future: getCatergoryCourses(categoryID),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var courses = snapshot.data;
          return ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 8),
            itemCount: courses.length,
            itemBuilder: (_, index) => CourseListTile(
              course: courses[index],
            ),
            separatorBuilder: (_, __) => CustomDivider(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('some error occured'),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
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
        course.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onTap: () {
        Get.to(ModulesPage(courseID: course.id, courseTitle: course.title,));
      },
    );
  }
}
