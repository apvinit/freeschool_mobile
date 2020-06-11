import 'package:flutter/material.dart';
import 'package:freeschool_mobile/content/content.dart';
import 'package:freeschool_mobile/content/full_screen_video_player.dart';
import 'package:freeschool_mobile/lesson/lesson.dart';
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
            itemBuilder: (_, index) => LessonsListTile(
              lesson: lessons[index],
            ),
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
        SizedBox(
          height: 200,
          child: FutureBuilder<List<Content>>(
            future: getLessonContents(lesson.id),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var contents = snapshot.data;
                return ListView.builder(
                    itemCount: contents.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text(contents[index].title),
                        onTap: () {
                          Get.to(FullScreenVideoPlayer(
                              data: contents[index].data));
                        },
                      );
                    });
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('some error'),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
        // ...lesson.contents.map(
        //   (e) => ListTile(
        //     leading: Icon(Icons.play_arrow),
        //     title: Text(e.name),
        //     onTap: () {
        //       Get.to(FullScreenVideoPlayer());
        //     },
        //   ),
        // )
      ],
    );
  }
}
