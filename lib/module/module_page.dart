import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:freeschool_mobile/lesson/lessons_page.dart';
import 'package:freeschool_mobile/services/ads.dart';
import 'package:freeschool_mobile/services/remote.dart';
import 'package:get/get.dart';

import 'module.dart';

class ModulesPage extends StatelessWidget {
  final int courseID;
  final String courseTitle;

  ModulesPage({@required this.courseID, @required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseTitle),
      ),
      body: ModulesList(courseID: courseID),
    );
  }
}

class ModulesList extends StatelessWidget {
  final int courseID;

  ModulesList({@required this.courseID});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Module>>(
      future: getCourseModules(courseID),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var modules = snapshot.data;
          return ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 8),
            itemCount: modules.length,
            itemBuilder: (_, index) {
              if (index != 0 && index % 2 == 0) {
                return Column(
                  children: [
                    SizedBox(height: 8),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(child: Text('Ad')),
                        AdmobBanner(
                          adSize: AdmobBannerSize.LARGE_BANNER,
                          adUnitId: getModulePageBannerId(),
                        ),
                      ],
                    ),
                    Divider(indent: 16),
                    ModulesListTile(
                      module: modules[index],
                    )
                  ],
                );
              }
              return ModulesListTile(
                module: modules[index],
              );
            },
            separatorBuilder: (_, __) => Divider(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("some error occured"),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
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
            module.title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Get.to(LessonsPage(
              moduleID: module.id,
              moduleTitle: module.title,
            ));
          },
        ),
        // ...module.lessons.map((e) => Padding(
        //       padding:
        //           const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        //       child: Text(e.name),
        //     ))
      ],
    );
  }
}
