import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_cubit.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/themes/dark_theme.dart';
import 'package:news_app/themes/light_theme.dart';
import 'package:news_app/views/home_view.dart';
import 'bloc/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  NewsServices.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()
        ..getGeneralNews()
        ..getSportsNews()
        ..getBusinessNews()
        ..getEntertainmentNews()
        ..getScienceNews()
        ..getHealthNews()
        ..getTechnologyNews(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: NewsCubit.get(context).isDark == true
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
