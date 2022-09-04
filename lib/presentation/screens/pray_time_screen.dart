import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslim/services/location.dart';

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
    LocationHelper.getCurrentLocation();
    _controller.getPrayTime(country: LocationHelper.country!, city:  LocationHelper.city!);
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
