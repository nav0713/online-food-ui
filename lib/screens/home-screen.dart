import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_ui/components/bottom_nav.dart';
import 'package:food_order_ui/screens/components/body.dart';
import 'components/app-bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNav(),
      body: Body(),
    );
  }
}
