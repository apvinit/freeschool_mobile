import 'dart:convert';

import 'package:flutter/foundation.dart' as core;
import 'package:freeschool_mobile/category/category.dart';
import 'package:freeschool_mobile/content/content.dart';
import 'package:freeschool_mobile/course/course.dart';
import 'package:freeschool_mobile/lesson/lesson.dart';
import 'package:freeschool_mobile/module/module.dart';
import 'package:http/http.dart' as http;

String get baseURL {
  if (core.kReleaseMode) {
    return "https://api.freeschool.org.in";
  }

  return "http://192.168.43.7:8888";
}

List<Category> parseCategories(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Category>((json) => Category.fromMap(json)).toList();
}

Future<List<Category>> getCategories() async {
  final response = await http.get("$baseURL/api/categories");

  if (response.statusCode == 200) {
    return parseCategories(response.body);
  } else {
    throw Exception('Failed to get categories');
  }
}

List<Course> parseCourses(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Course>((json) => Course.fromMap(json)).toList();
}

Future<List<Course>> getCatergoryCourses(int id) async {
  final response = await http.get("$baseURL/api/courses?category_id=$id");
  if (response.statusCode == 200) {
    return parseCourses(response.body);
  } else {
    throw Exception('Failed to get courses');
  }
}

List<Module> parseModules(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Module>((json) => Module.fromMap(json)).toList();
}

Future<List<Module>> getCourseModules(int id) async {
  final response = await http.get("$baseURL/api/modules?course_id=$id");
  if (response.statusCode == 200) {
    return parseModules(response.body);
  } else {
    throw Exception('Failed to get modules');
  }
}

List<Lesson> parseLessons(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Lesson>((json) => Lesson.fromMap(json)).toList();
}

Future<List<Lesson>> getModuleLessons(int id) async {
  final response = await http.get("$baseURL/api/lessons?module_id=$id");
  if (response.statusCode == 200) {
    return parseLessons(response.body);
  } else {
    throw Exception('Failed to get lessons');
  }
}

List<Content> parseContents(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Content>((json) => Content.fromMap(json)).toList();
}

Future<List<Content>> getLessonContents(int id) async {
  final response = await http.get("$baseURL/api/contents?lesson_id=$id");
  if (response.statusCode == 200) {
    return parseContents(response.body);
  } else {
    throw Exception('Failed to get Contents');
  }
}

String getStreamUrl(String data) {
  return "$baseURL/api/contents/stream/$data/index.m3u8";
}

String getMediaUrl(String name) {
  return "$baseURL/api/uploads/$name";
}
