import 'package:get/get.dart';
import 'package:moslim/data/models/pray_time_model.dart';
import 'package:moslim/services/dio_helper.dart';

class PrayTimeController extends GetxController {
  PrayTimeModel? prayTimeModel;

  getPrayTime({required String country, required String city}) {
    DioHelper.getData(url: 'timingsByCity', params: {
      'country': country,
      'city': city,
    }).then((value) {
      prayTimeModel = PrayTimeModel.fromJson(value);
      print(prayTimeModel!.data.date.gregorian.date);
      update();
    });
  }
}
