import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/utils/token/process_token.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          const Expanded(
              flex: 6,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Home page',
                  style: TextStyle(fontSize: 18),
                ),
              )),
          Expanded(
              flex: 1,
              child: EButton(
                label: 'Logout',
                onPressed: () {
                  setToken('');
                  Get.toNamed('/auth');
                },
                variant: ButtonVariant.secondary,
              ))
        ],
      ),
    );
  }
}
