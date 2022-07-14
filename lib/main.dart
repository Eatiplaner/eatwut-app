import 'package:eatiplan_mobile/config/routes.dart';
import 'package:eatiplan_mobile/config/theme.dart';
import 'package:eatiplan_mobile/provider/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          initialRoute: '/', // TODO: implement splash screen
          getPages: appRoutes(),
        ),
      ),
    );
  }
}
