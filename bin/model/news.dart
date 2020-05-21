class News {
  String title;
  String url;
  String author;
  String createdAt;

  News({this.title, this.url, this.author, this.createdAt});

  @override
  String toString() {
    return 'News{title: $title, url: $url, author: $author, createdAt: $createdAt}';
  }
}
