import 'package:eatiplan_mobile/config/routes.dart';
import 'package:eatiplan_mobile/config/theme.dart';
import 'package:eatiplan_mobile/i18n/main.dart';
import 'package:eatiplan_mobile/i18n/validation.dart';
import 'package:eatiplan_mobile/provider/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:form_validator/form_validator.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            initialRoute: '/',
            getPages: appRoutes(),
            translations: Messages(),
            locale: const Locale('vi', 'en')),
      ),
    );
  }
}
