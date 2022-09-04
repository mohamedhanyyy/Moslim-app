import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslim/presentation/screens/pray_time_screen.dart';
import 'package:moslim/services/dio_helper.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PrayTimeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
