import 'package:eatiplan_mobile/screens/home/home.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eatiplaner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(title: 'Eatiplaner'),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Eatiplaner is running!'),
            Text('This is a splash screen of it')
          ],
        ),
      ),
    );
  }
}
