import 'package:dio/dio.dart';
import 'package:moslim/core/constants.dart';

import '../data/models/pray_time_model.dart';

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

  static  getData(Map<String, dynamic> params) async {
     await dio!
        .get('timingsByCity', queryParameters: params)
        .then((value) {
      PrayTimeModel? prayTimeModel;
       prayTimeModel = PrayTimeModel.fromJson(value.data);
       if (value.statusCode == 200) {
         prayTimeModel=PrayTimeModel.fromJson(value.data);
         print('done');
         return value.data;
      }


     });
  }
}
