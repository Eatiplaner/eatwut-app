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
