import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';
import '../models/category_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);

  List<dynamic> general = [];
  List<NewsModel> generalArticles = [];

  void getGeneralNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "top",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetGeneralDataSuccessState());
      general = value.data['results'];
      for (var article in general) {
        NewsModel newsModel = NewsModel.fromJson(article);
        generalArticles.add(newsModel);
      }
      if (kDebugMode) {
        print(general);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetGeneralDataErrorState(error.toString()));
    });
  }

  List<dynamic> sports = [];
  List<NewsModel> sportsArticles = [];
  void getSportsNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "sports",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetSportsDataSuccessState());
      sports = value.data['results'];
      for (var article in sports) {
        NewsModel newsModel = NewsModel.fromJson(article);
        sportsArticles.add(newsModel);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetSportsDataErrorState(error.toString()));
    });
  }

  List<dynamic> business = [];
  List<NewsModel> businessArticles = [];
  void getBusinessNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "business",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetBusinessDataSuccessState());
      business = value.data['results'];
      for (var article in business) {
        NewsModel newsModel = NewsModel.fromJson(article);
        businessArticles.add(newsModel);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetBusinessDataErrorState(error.toString()));
    });
  }

  List<dynamic> entertainment = [];
  List<NewsModel> entertainmentArticles = [];
  void getEntertainmentNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "entertainment",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetEntertainmentDataSuccessState());
      entertainment = value.data['results'];
      for (var article in entertainment) {
        NewsModel newsModel = NewsModel.fromJson(article);
        entertainmentArticles.add(newsModel);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetEntertainmentDataErrorState(error.toString()));
    });
  }

  List<dynamic> science = [];
  List<NewsModel> scienceArticles = [];
  void getScienceNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "science",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetScienceDataSuccessState());
      science = value.data['results'];
      for (var article in science) {
        NewsModel newsModel = NewsModel.fromJson(article);
        scienceArticles.add(newsModel);
      }
      if (kDebugMode) {
        print(general);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetScienceDataErrorState(error.toString()));
    });
  }

  List<dynamic> health = [];
  List<NewsModel> healthArticles = [];
  void getHealthNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "health",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetHealthDataSuccessState());
      health = value.data['results'];
      for (var article in health) {
        NewsModel newsModel = NewsModel.fromJson(article);
        healthArticles.add(newsModel);
      }
      if (kDebugMode) {
        print(general);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetHealthDataErrorState(error.toString()));
    });
  }

  List<dynamic> technology = [];
  List<NewsModel> technologyArticles = [];
  void getTechnologyNews() {
    emit(NewsLoadingDataState());
    NewsServices.getNewsData(
      url: api,
      query: {
        "country": "eg",
        "category": "technology",
        "apiKey": apiKey,
      },
    ).then((value) {
      emit(NewsGetTechnologyDataSuccessState());
      technology = value.data['results'];
      for (var article in technology) {
        NewsModel newsModel = NewsModel.fromJson(article);
        technologyArticles.add(newsModel);
      }
    }).catchError((error) {
      if (kDebugMode) {
        print('we found error in general data ${error.toString()}');
      }
      emit(NewsGetTechnologyDataErrorState(error.toString()));
    });
  }

  bool isDark = false;
  void changeAppMode() {
    isDark = !isDark;
    emit(NewsChangeAppModeState());
  }

  final List<CategoryModel> model = const [
    CategoryModel(
      image: 'assets/images/business.jpg',
      text: "Business",
    ),
    CategoryModel(
      image: 'assets/images/entertaiment.jpeg',
      text: "Entertainment",
    ),
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      text: "Technology",
    ),
    CategoryModel(
      image: 'assets/images/general.jpeg',
      text: "General",
    ),
    CategoryModel(
      image: 'assets/images/health.jpeg',
      text: "Health",
    ),
    CategoryModel(
      image: 'assets/images/science.jpeg',
      text: "Science",
    ),
    CategoryModel(
      image: 'assets/images/sports.jpeg',
      text: "Sports",
    ),
  ];
}
