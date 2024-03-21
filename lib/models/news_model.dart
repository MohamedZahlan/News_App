class NewsModel {
  final String? image;
  final String title;
  final String url;
  final String? subtitle;

  const NewsModel(
      {required this.image,
      required this.title,
      required this.url,
      required this.subtitle});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      image: json['image_url'],
      title: json['title'],
      url: json['link'],
      subtitle: json['description'],
    );
  }
}
