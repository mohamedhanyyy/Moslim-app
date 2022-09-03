import 'package:flutter/material.dart';
import 'package:moslim/business/providers/pray_time_provider.dart';
import 'package:moslim/presentation/screens/pray_time_screen.dart';
import 'package:moslim/services/dio_helper.dart';
import 'package:provider/provider.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PrayTimeProvider>(
            create: (context) => PrayTimeProvider()),
      ],
      child: MaterialApp(
        home: PrayTimeScreen(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
