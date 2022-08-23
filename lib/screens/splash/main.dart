import 'dart:async';

import 'package:eatiplan_mobile/data/provider/rpc/jwt.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../utils/token/process_token.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  String token = "";
  late Timer _timer;
  int time = 1;
  @override
  void initState() {
    super.initState();
    initialToken();
  }

  void startTimer(bool isAuth) {
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
        if (isAuth) {
          Get.toNamed('/home');
        } else {
          Get.toNamed('/auth');
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
    final bool isAuth =
        await JwtProvider().validToken(responseToken.toString());
    startTimer(isAuth);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Image.asset('assets/images/app-circle.png'),
        ),
      ),
    );
  }
}
