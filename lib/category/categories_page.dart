import 'package:flutter/material.dart';
import 'package:freeschool_mobile/category/category.dart';
import 'package:freeschool_mobile/course/courses_page.dart';
import 'package:freeschool_mobile/data.dart';
import 'package:freeschool_mobile/widgets/custom_divider.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Free School'),
        ),
        body: CourseCategoryList());
  }
}

class CourseCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories.length,
      itemBuilder: (_, index) => CourseCategoryTile(
        category: categories[index],
      ),
      separatorBuilder: (_, __) => CustomDivider()
    );
  }
}

class CourseCategoryTile extends StatelessWidget {
  final Category category;

  CourseCategoryTile({@required this.category});

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
        category.name,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onTap: () {
        Get.to(CoursesPage());
      },
    );
  }
}
