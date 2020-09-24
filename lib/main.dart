import 'package:flutter/material.dart';
import 'package:food_order_ui/constant.dart';
import 'package:food_order_ui/screens/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kSecondaryColor),
            bodyText2: TextStyle(color: kSecondaryColor)),
      ),
      home: HomeScreen(),
    );
  }
}
