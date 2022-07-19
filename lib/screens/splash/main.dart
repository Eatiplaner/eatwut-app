import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('welcome'.trParams({'username': 'Jonny'})),
                MaterialButton(
                  color: const Color.fromARGB(255, 103, 150, 188),
                  onPressed: () => Get.toNamed('/auth'),
                  child: const Text('Auth screen'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () => Get.toNamed('/storybook'),
                  child: const Text('View Storybook'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
