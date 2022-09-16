import 'package:eatiplan_mobile/provider/navigation.dart';
import 'package:eatiplan_mobile/screens/home/notification/main.dart';
import 'package:eatiplan_mobile/screens/home/plan/main.dart';
import 'package:eatiplan_mobile/screens/home/setting/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var currentTab = const [
    PlanScreen(),
    PlanScreen(),
    NotificationScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        currentIndex: provider.currentIndex,
        iconSize: 27.0,
        elevation: 10.0,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          )
        ],
      ),
    );
  }
}
