class Course {
  int id;
  String title;
  String description;
  String cover;
  String lang;
  String createdBy;
  int categoryID;
  bool draft;

  Course({
    this.id,
    this.title,
    this.description,
    this.cover,
    this.lang,
    this.createdBy,
    this.categoryID,
    this.draft,
  });

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      cover: map['cover'],
      lang: map['lang'],
      createdBy: map['created_by'],
      categoryID: map['category_id'],
      draft: map['draft'],
    );
  }
}
