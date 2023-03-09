import 'dart:ui';
import 'package:cocotea_eco/Screen/BottomNavBar/BottomNavBar.dart';
import 'package:cocotea_eco/Screen/Dashboard/Appbar.dart';
import 'package:cocotea_eco/Screen/Product/Body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(context), //menu
      body: Body(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
