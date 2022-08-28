import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NotificationScreen extends HookWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      padding: const EdgeInsets.all(42),
      child: const Center(
          child: Text(
        'Coming soon ...',
        style: TextStyle(
            fontSize: 25,
            fontFamily: fontFamily,
            color: primaryColor,
            fontWeight: FontWeight.w700),
      )),
    ));
  }
}
