import 'package:flutter/material.dart';
import 'package:uichallgeneday1/screens/BottomNavigationBar.dart';
import 'package:uichallgeneday1/screens/BottomScreen/Home.dart';
import 'package:uichallgeneday1/screens/details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        ///accentColor: Color(0xffCBCFD2),
        primaryColor: Color(0xffF212BD),
      ),
      //home: MyBottomNavigation(),
      initialRoute: '/',
routes: {
        "/":(ctx)=>MyBottomNavigation(),
Home.routeName:(ctx)=>Home(),
 // Home.routeName:(ctx)=>Home(),
  detail_Screen.routeName:(ctx)=>detail_Screen(),
},
    );
  }
}
