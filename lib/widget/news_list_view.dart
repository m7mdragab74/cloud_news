import 'package:cloud_news/models/article_model.dart';
import 'package:cloud_news/widget/news_list_tile.dart';
import 'package:flutter/material.dart';

class NewsTilelistview extends StatelessWidget {
  const NewsTilelistview({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
