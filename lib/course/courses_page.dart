import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:freeschool_mobile/course/course.dart';
import 'package:freeschool_mobile/module/module_page.dart';
import 'package:freeschool_mobile/services/ads.dart';
import 'package:freeschool_mobile/services/remote.dart';
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
          return ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8),
            itemCount: courses.length,
            itemBuilder: (_, index) {
              if (index != 0 && index % 3 == 0) {
                return Column(
                  children: [
                    SizedBox(height: 8),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(child: Text('Ad')),
                        AdmobBanner(
                          adSize: AdmobBannerSize.LARGE_BANNER,
                          adUnitId: getCoursePageBannerId(),
                        ),
                      ],
                    ),
                    Divider(indent: 16),
                    CourseListTile(
                      course: courses[index],
                    )
                  ],
                );
              }

              return CourseListTile(
                course: courses[index],
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('some error occured'),
          );
        }
        return Center(child: CircularProgressIndicator());
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
    return Card(
      child: InkWell(
        onTap: () {
          Get.to(ModulesPage(
            courseID: course.id,
            courseTitle: course.title,
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                getMediaUrl(course.cover),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                course.title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
