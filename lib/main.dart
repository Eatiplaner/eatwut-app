import 'dart:async';

import 'package:eatiplan_mobile/config/routes.dart';
import 'package:eatiplan_mobile/config/theme.dart';
import 'package:eatiplan_mobile/i18n/main.dart';
import 'package:eatiplan_mobile/i18n/validation.dart';
import 'package:eatiplan_mobile/provider/theme.dart';
import 'package:eatiplan_mobile/utils/token/process_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
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

        FlutterNativeSplash.remove();
        if (token.isNotEmpty) {
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
    setState(() {
      token = responseToken ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    ValidationBuilder.globalLocale = CustomValidationLocale();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (ctx, themeObject, _) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Eatiplaner App',
            themeMode: themeObject.mode,
            theme: lightTheme,
            darkTheme: darkTheme,
            initialRoute: '/auth',
            getPages: appRoutes(),
            translations: Messages(),
            locale: const Locale('vi', 'en')),
      ),
    );
  }
}
