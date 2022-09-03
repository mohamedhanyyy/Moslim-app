import 'package:flutter/foundation.dart';
import 'package:moslim/data/models/pray_time_model.dart';
import 'package:moslim/services/dio_helper.dart';
import 'package:moslim/services/location.dart';

class PrayTimeProvider extends ChangeNotifier {
  PrayTimeModel? prayTimeModel;

  getPrayTime({required String country, required String city}) {
    DioHelper.getData({
      'country': country,
      'city': city,
    }).then((value) {

          prayTimeModel =PrayTimeModel.fromJson(value!.data);
          print(prayTimeModel!.code);
          notifyListeners();

    });
  }
}
