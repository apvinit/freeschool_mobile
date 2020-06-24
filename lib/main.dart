import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:freeschool_mobile/category/categories_page.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize("ca-app-pub-2582751373548446~2091118435");
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Free School',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Martel Sans'
      ),
      home: CategoryPage(),
    );
  }
}