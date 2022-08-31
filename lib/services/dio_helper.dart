import 'package:dio/dio.dart';
import 'package:moslim/core/constants.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://aladhan.p.rapidapi.com/',
        headers: {
          'X-RapidAPI-Key': apiKey,
          'X-RapidAPI-Host': hostKey,
        },
      ),
    );
  }

  static getData(
      {required String url, required Map<String, dynamic> params}) async {
    var response = await dio!.get(url, queryParameters: params);
    return response.data;
  }
}
