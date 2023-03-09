import 'package:cocotea_eco/Screen/Dashboard/Searchbox.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Sidebar/naviigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
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
      ),
      
    );
    
  }
  
}
