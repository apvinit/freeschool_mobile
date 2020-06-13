import 'package:flutter/foundation.dart';

String getCategoryPageBannerId() {
  if (kReleaseMode) {
    return "ca-app-pub-2582751373548446/7808981995";
  }
  return "ca-app-pub-3940256099942544/6300978111";
}

String getCoursePageBannerId() {
  if (kReleaseMode) {
    return "ca-app-pub-2582751373548446/4115496603";
  }
  return "ca-app-pub-3940256099942544/6300978111";
}

String getModulePageBannerId() {
  if (kReleaseMode) {
    return "ca-app-pub-2582751373548446/2443322283";
  }
  return "ca-app-pub-3940256099942544/6300978111";
}

String getLessonPageBannerId() {
  if (kReleaseMode) {
    return "ca-app-pub-2582751373548446/2869863543";
  }
  return "ca-app-pub-3940256099942544/6300978111";
}

String getContentPageBannerId() {
  if (kReleaseMode) {
    return "ca-app-pub-2582751373548446/2575485542";
  }
  return "ca-app-pub-3940256099942544/6300978111";
}
