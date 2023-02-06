import 'dart:ui';

import 'package:cocotea_eco/Screen/Dashboard/IntemList.dart';
import 'package:cocotea_eco/Screen/Dashboard/Menulist.dart';
import 'package:cocotea_eco/Screen/Dashboard/Searchbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'DiscountCard.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChange: (value) {},
          ),
          menulist(),
          IntemList(),
          DiscountCard()
        ],
      ),
    );
  }
}

