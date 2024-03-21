import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/news_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListView(
            newsModel: list ?? [],
          ),
        ],
      ),
    );
  }
}
