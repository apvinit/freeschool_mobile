import 'package:freeschool_mobile/category/category.dart';
import 'package:freeschool_mobile/content/content.dart';
import 'package:freeschool_mobile/course/course.dart';
import 'package:freeschool_mobile/lesson/lesson.dart';
import 'package:freeschool_mobile/module/module.dart';

var categories = [
  Category(id: 1, name: "Math"),
  Category(id: 2, name: "Science"),
  Category(id: 3, name: "Economics and finance"),
  Category(id: 4, name: "Arts and humanities"),
  Category(id: 5, name: "Computing"),
  Category(id: 6, name: "Social Studies"),
];

var courses = [
  Course(id: 1, name: "Class 1", categoryID: 1),
  Course(id: 2, name: "Class 2", categoryID: 1),
  Course(id: 3, name: "Class 3", categoryID: 1),
  Course(id: 4, name: "Class 4", categoryID: 1),
  Course(id: 5, name: "Class 5", categoryID: 1),
  Course(id: 6, name: "Class 6", categoryID: 1),
  Course(id: 7, name: "Class 7", categoryID: 1),
  Course(id: 8, name: "Class 8", categoryID: 1),
  Course(id: 9, name: "Class 9", categoryID: 1),
  Course(id: 10, name: "Class 10", categoryID: 1),
];

var modules = [
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Fractions and decimals", lessons: [
    Lesson(name: "Fractions"),
    Lesson(name: "Multiplying fractions"),
    Lesson(name: "Dividing fractions"),
    Lesson(name: "Fractions word problems"),
    Lesson(name: "Multiplying decimals"),
    Lesson(name: "Dividing decimals"),
    Lesson(name: "Decimals word problems"),
  ]),
  Module(name: "Data Handling", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
  Module(name: "Integers", lessons: [
    Lesson(name: "Addition and subtraction of integers"),
    Lesson(name: "Multiplication of integers"),
    Lesson(name: "Integers word problems")
  ]),
];

var lessons = [
  Lesson(name: "Addition and subtraction of integers", contents: [
    Content(name: "Adding number with different signs"),
  ]),
  Lesson(name: "Multiplication of integers", contents: [
    Content(name: "Multiplying positive and negative numbers"),
    Content(name: "Why a negative times a negative makes sense"),
    Content(name: "Why a negative times a negative makes sense"),
    Content(name: "Why a negative times a negative is positive"),
  ]),
  Lesson(name: "Division of integers", contents: [
    Content(name: "Dividing negative and positive numbers"),
  ]),
];

var contents = [
  Content(
    id: 1,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 2,
    name: "Quadilateral part 1",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 3,
    name: "Quadilateral Part 2",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 4,
    name: "Sum of Interiors of triangle",
    lessonID: 2,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 5,
    name: "Sum of Interiors of triangle",
    lessonID: 5,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 6,
    name: "Sum of Interiors of triangle",
    lessonID: 5,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 7,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 8,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 9,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 10,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 7,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 8,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 9,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 10,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 7,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 8,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 9,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 10,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 7,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 8,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 9,
    name: "Sum of Interiors of triangle",
    lessonID: 1,
    type: ContentType.Video,
    data: "https://google.com",
  ),
  Content(
    id: 106,
    name: "Intro to dart",
    lessonID: 11,
    type: ContentType.Video,
    data: "https://www.youtube.com/watch?v=8F2uemqLwvE",
  ),
  Content(
    id: 107,
    name: "Sum of Interiors of triangle",
    lessonID: 11,
    type: ContentType.Video,
    data: "https://www.youtube.com/watch?v=vM1gHeQRqjI",
  ),
  Content(
    id: 108,
    name: "Methods, final static",
    lessonID: 11,
    type: ContentType.Video,
    data: "https://www.youtube.com/watch?v=qROCdGYRjZg",
  ),
  Content(
    id: 109,
    name: "Abstract Classes, Interfaces",
    lessonID: 11,
    type: ContentType.Video,
    data: "https://www.youtube.com/watch?v=3w_44E9MiRE",
  ),
  Content(
    id: 110,
    name: "Scope, Iterators, Functional Programming",
    lessonID: 11,
    type: ContentType.Video,
    data: "https://www.youtube.com/watch?v=QQMGr_yxvm0",
  ),
];
