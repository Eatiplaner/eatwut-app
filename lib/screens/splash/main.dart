import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../utils/token/process_token.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  createState() => _SplasScreen();
}

class _SplasScreen extends State<SplashScreen> {
  String token = "";
  late Timer _timer;
  int time = 2;
  @override
  void initState() {
    super.initState();
    initialToken();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time > 0) {
        if (kDebugMode) {
          print(time);
        }
        setState(() {
          time -= 1;
        });
      } else {
        _timer.cancel();
        if (token.isNotEmpty) {
          Get.toNamed('/home');
        } else {
          Get.toNamed('/storybook');
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void initialToken() async {
    final responseToken = await getToken();
    setState(() {
      token = responseToken ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(token.isNotEmpty ? 'This is token' : ""),
              Text(token),
              Text('This page will navigate from $time seconds')
            ],
          ),
        ),
      ),
    );
  }
}
