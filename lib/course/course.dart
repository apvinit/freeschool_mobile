class Course {
  int id;
  String title;
  String description;
  int categoryID;
  String iconURL;

  Course({
    this.id,
    this.title,
    this.description,
    this.categoryID,
    this.iconURL
  });

  factory Course.fromMap(Map<String,dynamic> map) {
    return Course(
      id: map['id'],
      title: map['title'],
      description: map['description']
    );
  }
}