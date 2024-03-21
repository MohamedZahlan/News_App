import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_cubit.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';
import '../constants/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.model}) : super(key: key);
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        NewsCubit cubit = NewsCubit.get(context);
        return GestureDetector(
          onTap: () {
            if (model.text == 'Sports') {
              list = cubit.sportsArticles;
            } else if (model.text == 'Business') {
              list = cubit.businessArticles;
            } else if (model.text == 'Entertainment') {
              list = cubit.entertainmentArticles;
            } else if (model.text == 'Science') {
              list = cubit.scienceArticles;
            } else if (model.text == 'Technology') {
              list = cubit.technologyArticles;
            } else if (model.text == 'General') {
              list = cubit.generalArticles;
            } else if (model.text == 'Health') {
              list = cubit.healthArticles;
            } else {
              list = [];
            }
            navigateTo(context, const CategoryView());
          },
          child: Container(
            height: height(context) / 8.0,
            width: width(context) / 2.0,
            margin: EdgeInsets.symmetric(
              horizontal: width(context) / 35,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                model.text,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        );
      },
    );
  }
}
