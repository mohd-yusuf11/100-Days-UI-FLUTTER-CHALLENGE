import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BottomScreen/Home.dart';


class MyBottomNavigation extends StatefulWidget {
  static const routeName = '/';


  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyBottomNavigation> {

  int _currentIndex = 0;
  final tabs = [
    Home(),
    Text("Notification"),

    Text("Notification"),
    Text("Settings"),
    Text("Filters"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_sharp),
              title: Text("Wallet")),
          BottomNavigationBarItem(icon: Icon(Icons.filter),
              title: Text("Filter")),

          BottomNavigationBarItem(icon: Icon(Icons.notifications),
              title: Text("Notifications")),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              title: Text("Settings")),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });

        },
      ),

    );
  }
}
