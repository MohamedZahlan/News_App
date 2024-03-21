import 'package:dio/dio.dart';

class NewsServices {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions(
          //baseUrl: "https://newsapi.org/",
          baseUrl: "https://newsdata.io/",
          headers: {"Content-Type": "application/json"},
          receiveDataWhenStatusError: true),
    );
  }

  static Future<Response> getNewsData({
    required String url,
    required query,
    String language = 'ar',
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
      "language": language,
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
