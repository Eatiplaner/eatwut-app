import 'package:eatiplan_mobile/config/setting.dart';
import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/header/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SettingScreen extends HookWidget {
  const SettingScreen({super.key});
  Widget settingList() {
    return Column(
      children: <Widget>[
        for (var setting in settingConfig)
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: MaterialButton(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                onPressed: () {
                  Get.toNamed(setting.route);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(setting.icon),
                    const SizedBox(width: 5),
                    Text(setting.title.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w500)),
                  ],
                )),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      padding: const EdgeInsets.only(left: 42, right: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EHeader(
            title: Text(
              'home.setting.title'.tr,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            bottomMargin: 24,
          ),
          settingList(),
          MaterialButton(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              onPressed: () {
                // TODO: logout integration
                Get.toNamed('/auth');
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.logout_outlined, color: Colors.red),
                  const SizedBox(width: 5),
                  Text('home.setting.logout'.tr,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w500)),
                ],
              ))
        ],
      ),
    ));
  }
}
