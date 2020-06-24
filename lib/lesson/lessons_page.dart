import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:freeschool_mobile/content/content_page.dart';
import 'package:freeschool_mobile/lesson/lesson.dart';
import 'package:freeschool_mobile/services/ads.dart';
import 'package:freeschool_mobile/services/remote.dart';
import 'package:get/get.dart';

class LessonsPage extends StatelessWidget {
  final int moduleID;
  final String moduleTitle;

  LessonsPage({@required this.moduleID, @required this.moduleTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moduleTitle),
      ),
      body: LessonsList(moduleID: moduleID),
    );
  }
}

class LessonsList extends StatelessWidget {
  final int moduleID;

  LessonsList({@required this.moduleID});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Lesson>>(
      future: getModuleLessons(moduleID),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var lessons = snapshot.data;
          return ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 8),
            itemCount: lessons.length,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  LessonsListTile(
                    lesson: lessons[index],
                  ),
                  Divider(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(child: Text('Ad')),
                      AdmobBanner(
                        adSize: AdmobBannerSize.LARGE_BANNER,
                        adUnitId: getLessonPageBannerId(),
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (_, __) => Divider(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Some error occured'),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
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
            lesson.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        ...lesson.contents.map(
          (c) => ListTile(
            leading: Icon(Icons.play_arrow),
            title: Text(c.title),
            onTap: () {
              Get.to(ContentPage(content: c,));
            },
          ),
        )
      ],
    );
  }
}
