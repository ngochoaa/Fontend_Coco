
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

AppBar BillAppbar(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: kTextLightColor,
          height: 4.0,
        ),
      ),
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DashboardPage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: kMainColor,
          )),
      title: Center(
          child: const Text(
        'ĐƠN HÀNG',
        style: TextStyle(
            color: kTextColor, fontSize: 24, fontWeight: FontWeight.bold),
      )));
}
