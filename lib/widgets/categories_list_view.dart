import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_cubit.dart';
import '../constants/constants.dart';
import 'category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final NewsCubit cubit = NewsCubit.get(context);
        return SizedBox(
          height: height(context) / 8.0,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                CategoryItem(model: cubit.model[index]),
            itemCount: cubit.model.length,
          ),
        );
      },
    );
  }
}
