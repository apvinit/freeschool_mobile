import 'package:flutter/material.dart';
import 'package:freeschool_mobile/lesson/lessons_page.dart';
import 'package:freeschool_mobile/topics/topic.dart';
import 'package:get/get.dart';

import '../data.dart';

class TopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 1'),
      ),
      body: TopicsList(),
    );
  }
}

class TopicsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: topics.length,
      itemBuilder: (_, index) => TopicsListTile(
        topic: topics[index],
      ),
      separatorBuilder: (_, __) => Divider(),
    );
  }
}

class TopicsListTile extends StatelessWidget {
  final Topic topic;

  TopicsListTile({@required this.topic});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(Icons.dashboard),
          trailing: Icon(Icons.chevron_right),
          title: Text(
            topic.name,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Get.to(LessonsPage());
          },
        ),
        ...topic.lessons.map((e) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(e.name),
            ))
      ],
    );
  }
}
