import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_cubit.dart';
import '../constants/constants.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/message_error_widget.dart';
import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        NewsCubit cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: buildAppBar(context),
          body: state is NewsLoadingDataState
              ? const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                )
              : CustomScrollView(
                  slivers: [
                    // List view for category items
                    const SliverToBoxAdapter(
                      child: CategoriesListView(),
                    ),
                    // this size box for space between widgets
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: height(context) / 20,
                      ),
                    ),
                    // This widget to build News Item
                    state is NewsGetGeneralDataErrorState
                        ? const MessageError()
                        : NewsListView(newsModel: cubit.generalArticles),
                  ],
                ),
        );
      },
    );
  }
}
