import 'package:flutter/material.dart';
import 'package:news_app/bloc/news_cubit.dart';

import '../models/news_model.dart';

double height(context) => MediaQuery.of(context).size.height;

double width(context) => MediaQuery.of(context).size.width;

void navigateTo(context, screen) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );

void navigateToFinish(context, screen) =>
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return screen;
    }), (route) => false);

AppBar buildAppBar(BuildContext context, [Widget? leading]) {
  return AppBar(
    centerTitle: true,
    leading: leading,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "News",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "Cloud",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.orangeAccent),
        ),
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {
            NewsCubit.get(context).changeAppMode();
          },
          icon: const Icon(Icons.dark_mode))
    ],
  );
}

//String api = "v2/top-headlines";
String api = "api/1/news";

//String apiKey = "f60b2e6c3b3b496f9b06472617b573ff";
String apiKey = "pub_4011470341f7c7954a2a4ffcb851b91b86355";

// this list to select the correct list to show category news
List<NewsModel>? list;
