class Category {
  int id;
  String title;
  String cover;
  String lang;

  Category({this.id, this.title, this.cover, this.lang});

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map["id"],
      title: map["title"],
      cover: map["cover"],
      lang: map["lang"]
    );
  }
}
