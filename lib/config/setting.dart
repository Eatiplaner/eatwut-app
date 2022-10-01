import 'package:flutter/material.dart';

class Setting {
  final String route;
  final IconData icon;
  final String title;

  Setting({
    required this.route,
    required this.icon,
    required this.title,
  });
}

List<Setting> get settingConfig => [
      Setting(
          route: 'home/settings/profile',
          title: 'home.setting.profile.title',
          icon: Icons.account_circle_outlined),
      Setting(
          route: '/notification',
          title: 'home.setting.notification.title',
          icon: Icons.notifications_outlined),
      Setting(
          route: '/language',
          title: 'home.setting.language.title',
          icon: Icons.language),
      Setting(
          route: '/version',
          title: 'home.setting.version.title',
          icon: Icons.error_outline),
    ];
