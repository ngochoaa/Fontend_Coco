
import 'package:cocotea_eco/Screen/BottomNavBar/BottomNavBar.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Thông Tin",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        )),
      
      body: Body(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
