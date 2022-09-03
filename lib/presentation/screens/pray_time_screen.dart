import 'package:flutter/material.dart';
import 'package:moslim/business/providers/pray_time_provider.dart';
import 'package:provider/provider.dart';

class PrayTimeScreen extends StatefulWidget {
  const PrayTimeScreen({Key? key}) : super(key: key);

  @override
  State<PrayTimeScreen> createState() => _PrayTimeScreenState();
}

class _PrayTimeScreenState extends State<PrayTimeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<PrayTimeProvider>(context, listen: false)
          .getPrayTime(country: 'Egypt', city: 'Cairo');
    });
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
