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
            margin: const EdgeInsets.only(bottom: 26),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(setting['icon']),
                const SizedBox(width: 5),
                TextButton(
                    onPressed: () {
                      Get.toNamed(setting['route']);
                    },
                    child: Text(setting['title'],
                        style: const TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w500))),
              ],
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      padding: const EdgeInsets.all(42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EHeader(
            title: 'home.setting.title',
          ),
          settingList(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.logout_outlined, color: Colors.red),
              const SizedBox(width: 5),
              TextButton(
                  onPressed: () {
                    // TODO: logout integration
                  },
                  child: Text('home.setting.logout'.tr,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w500))),
            ],
          )
        ],
      ),
    ));
  }
}
