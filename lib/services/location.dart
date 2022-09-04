import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationHelper {
  static Position? position;

  static String? country;
  static String? city;

  static Future<void> getCurrentLocation() async {
    bool services = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission;

    if (services == false) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.always) {
        _getCurrentPosition();
      }
    } else if (services == true) {
      _getCurrentPosition();
    }
  }

  static Future<void> _getCurrentPosition() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    if (kDebugMode) {
      print(position!.longitude);
      print(position!.latitude);
    }
    getCurrentPlace();
  }

  static Future<void> getCurrentPlace() async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position!.latitude, position!.longitude);
    country = placemarks[0].country;

    city =
        placemarks[0].administrativeArea!.replaceAll('Governorate', '').trim();

    print(country);
    print(city);
  }
}
