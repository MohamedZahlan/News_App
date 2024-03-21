import 'package:flutter/material.dart';
import '../models/news_model.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key, required this.newsModel}) : super(key: key);
  final List<NewsModel> newsModel;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newsModel.length,
        (context, index) => NewsItem(newsModel: newsModel[index]),
      ),
    );
  }
}
