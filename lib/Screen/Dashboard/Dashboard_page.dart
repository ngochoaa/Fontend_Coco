import 'dart:ui';

import 'package:cocotea_eco/Screen/BottomNavBar/BottomNavBar.dart';
import 'package:cocotea_eco/Screen/Dashboard/Appbar.dart';
import 'package:cocotea_eco/Screen/Dashboard/Body.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(context,
      ), //menu
      body: BodyDB(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}

