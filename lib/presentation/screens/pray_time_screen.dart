import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/pray_time_provider.dart';

class PrayTimeScreen extends StatefulWidget {
  @override
  State<PrayTimeScreen> createState() => _PrayTimeScreenState();
}

class _PrayTimeScreenState extends State<PrayTimeScreen> {
  final PrayTimeController _controller = Get.put(PrayTimeController());

  @override
  void initState() {
    super.initState();
    _controller.getPrayTime(country: 'Egypt', city: 'Cairo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pray time'),
      ),
    );
  }
}
