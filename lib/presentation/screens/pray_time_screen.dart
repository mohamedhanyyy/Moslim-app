import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslim/services/location.dart';
import 'package:moslim/services/notifications_helper.dart';

import '../../controllers/pray_time_provider.dart';

class PrayTimeScreen extends StatefulWidget {
  const PrayTimeScreen({Key? key}) : super(key: key);

  @override
  State<PrayTimeScreen> createState() => _PrayTimeScreenState();
}

class _PrayTimeScreenState extends State<PrayTimeScreen> {
  final PrayTimeController _controller = Get.put(PrayTimeController());

  @override
  void initState() {
    super.initState();
    // LocationHelper.getCurrentLocation();

    // AwesomeNotifications().createdStream.listen((notification) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text('Notification Created on ${notification.channelKey}'),
    //     ),
    //   );
    // });

    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        LocalNotificationsHelper.createPlantFoodNotification();

        if (!isAllowed) {
           AwesomeNotifications().requestPermissionToSendNotifications();
        }
       },
    );
    // _controller.getPrayTime(country: LocationHelper.country!, city:  LocationHelper.city!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pray time'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('send notification'),
          onPressed: () {
            LocalNotificationsHelper.createPlantFoodNotification();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    AwesomeNotifications().actionSink.close();
    AwesomeNotifications().createdSink.close();
    super.dispose();
  }
}
