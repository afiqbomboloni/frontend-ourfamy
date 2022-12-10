import 'package:flutter/material.dart';
import 'package:ourfamy/model/article.dart';

class ArticleListPage extends StatelessWidget {
  static const routeName = '/articleListPage';

  const ArticleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OurFamy'),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> article = parseEvents(snapshot.data);
          return ListView.builder(
            itemCount: article.length,
            itemBuilder: (context, index) {
              return _buildEventItem(context, article[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildEventItem(BuildContext context, Article article) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      leading: Image.network(
        article.image,
        width: 100,
      ),
      title: Text(article.judul),
      subtitle: Text(article.penulis),
      onTap: () {
        // Navigator.pushNamed(context, ArticleDetailPage.routeName,
        //     arguments: article);
      },
    );
  }
}
