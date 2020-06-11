class Category {
  int id;
  String title;
  String iconURL;

  Category({
    this.id,
    this.title,
    this.iconURL,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(id: map["id"], title: map["title"]);
  }
}
