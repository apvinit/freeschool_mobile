import 'package:flutter/material.dart';
import 'package:freeschool_mobile/category/category.dart';
import 'package:freeschool_mobile/course/courses_page.dart';
import 'package:freeschool_mobile/services/remote.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CourseCategoryList()));
  }
}

class CourseCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            'Subjects',
            style: Theme.of(context).textTheme.headline2.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
        ),
        Expanded(
          child: FutureBuilder<List<Category>>(
            future: getCategories(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var categories = snapshot.data;
                return GridView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200, childAspectRatio: 0.95),
                  itemBuilder: (_, index) {
                    return CourseCategoryTile(
                      category: categories[index],
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("error occured"),
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}

class CourseCategoryTile extends StatelessWidget {
  final Category category;

  CourseCategoryTile({@required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Get.to(CoursesPage(
            categoryID: category.id,
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              getMediaUrl(category.cover),
              height: 150,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Text(
                category.title,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
