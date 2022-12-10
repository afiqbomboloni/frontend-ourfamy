import 'dart:convert';

class Article {
  final num id;
  final String kategori;
  final String penulis;
  final String judul;
  final String url;
  final String image;

  Article({
    required this.id,
    required this.kategori,
    required this.penulis,
    required this.judul,
    required this.url,
    required this.image,
  });

  factory Article.fromJson(Map<String, dynamic> event) => Article(
        id: event['id'],
        kategori: event['kategori'],
        penulis: event['penulis'],
        judul: event['judul'],
        url: event['url'],
        image: event['image'],
      );
}

List<Article> parseEvents(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['articles'];
  return parsed.map((json) => Article.fromJson(json)).toList();
}
