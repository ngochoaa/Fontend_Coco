import 'package:cocotea_eco/Screen/Bill.dart/Billpage.dart';
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Dashboard/DiscountCard.dart';
import 'package:cocotea_eco/Screen/Dashboard/IntemList.dart';
import 'package:cocotea_eco/Screen/Dashboard/Menulist.dart';
import 'package:cocotea_eco/Screen/Dashboard/Searchbox.dart';
import 'package:cocotea_eco/Screen/Menu/screens/home/home_screen.dart';
import 'package:cocotea_eco/Screen/Sidebar/naviigation_drawer.dart';
import 'package:cocotea_eco/Screen/Wallet/Wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NavigationDrawer()));
        },
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Color.fromARGB(255, 40, 100, 54),
        )),
    title: RichText(
        text: TextSpan(
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            children: [
          TextSpan(
            text: "CocoTea",
            style: TextStyle(color: Color.fromARGB(255, 49, 125, 51)),
          ),
        ])),
    actions: <Widget>[
      IconButton(
          onPressed: null,
          icon: SvgPicture.asset(
            "assets/icons/user.svg",
            color: Colors.grey,
          ))
    ],
  );
}
