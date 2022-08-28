import 'package:flutter/material.dart';
import 'package:get/get.dart';

get settingConfig => [
      {
        'route': '/profile',
        'title': 'home.setting.profile.title'.tr,
        'icon': Icons.account_circle_outlined,
      },
      {
        'route': '/notification',
        'title': 'home.setting.notification.title'.tr,
        'icon': Icons.notifications_outlined,
      },
      {
        'route': '/language',
        'title': 'home.setting.language.title'.tr,
        'icon': Icons.language,
      },
      {
        'route': '/version',
        'title': 'home.setting.version.title'.tr,
        'icon': Icons.error_outline,
      }
    ];
