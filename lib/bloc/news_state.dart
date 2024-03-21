part of 'news_cubit.dart';

abstract class NewsStates {}

class NewsInitial extends NewsStates {}

class NewsLoadingDataState extends NewsStates {}

class NewsGetGeneralDataSuccessState extends NewsStates {}

class NewsGetGeneralDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetGeneralDataErrorState(this.error);
}

class NewsGetBusinessDataSuccessState extends NewsStates {}

class NewsGetBusinessDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetBusinessDataErrorState(this.error);
}

class NewsGetSportsDataSuccessState extends NewsStates {}

class NewsGetSportsDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetSportsDataErrorState(this.error);
}

class NewsGetEntertainmentDataSuccessState extends NewsStates {}

class NewsGetEntertainmentDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetEntertainmentDataErrorState(this.error);
}

class NewsGetScienceDataSuccessState extends NewsStates {}

class NewsGetScienceDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetScienceDataErrorState(this.error);
}

class NewsGetTechnologyDataSuccessState extends NewsStates {}

class NewsGetTechnologyDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetTechnologyDataErrorState(this.error);
}

class NewsGetHealthDataSuccessState extends NewsStates {}

class NewsGetHealthDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetHealthDataErrorState(this.error);
}

class NewsGetSearchDataSuccessState extends NewsStates {}

class NewsGetSearchDataErrorState extends NewsStates {
  final dynamic error;
  NewsGetSearchDataErrorState(this.error);
}

class NewsChangeAppModeState extends NewsStates {}
