
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:flutter/material.dart';
 AppBar detailsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 29, 61, 30),
      elevation: 0,
      leading: IconButton(onPressed: () {
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()));
      }, icon: Icon(Icons.arrow_back)),
    );
  }
