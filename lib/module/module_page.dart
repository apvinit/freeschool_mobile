import 'package:flutter/material.dart';
import 'package:freeschool_mobile/lesson/lessons_page.dart';
import 'package:get/get.dart';

import '../data.dart';
import 'module.dart';

class ModulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 1'),
      ),
      body: ModulesList(),
    );
  }
}

class ModulesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: modules.length,
      itemBuilder: (_, index) => ModulesListTile(
        module: modules[index],
      ),
      separatorBuilder: (_, __) => Divider(),
    );
  }
}

class ModulesListTile extends StatelessWidget {
  final Module module;

  ModulesListTile({@required this.module});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(Icons.dashboard),
          trailing: Icon(Icons.chevron_right),
          title: Text(
            module.name,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Get.to(LessonsPage());
          },
        ),
        ...module.lessons.map((e) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(e.name),
            ))
      ],
    );
  }
}
