import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class LocalNotificationsHelper {
  static Future<void> createPlantFoodNotification() async {
    await AwesomeNotifications()
        .createNotification(
      content: NotificationContent(
        id: 748847,
        channelKey: 'basic_channel',
        title: 'title',
        body: 'Florist at 123 Main St. has 2 in stock.',
      ),
    )
        .then((value) {
      print('done');
    }).catchError((error) {
      print(error);
    });
  }
}
