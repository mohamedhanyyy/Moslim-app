import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class LocationHelper {
  static Position? position;

  static void getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission != LocationPermission.deniedForever ||
        permission != LocationPermission.denied) {
      getCurrentLocation();

    }
  }

  static getCurrentPosition() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position!.longitude);
    print(position!.latitude);
    return position;
  }
}
