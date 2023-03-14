
import 'package:cocotea_eco/Screen/Bill.dart/Appbarbill.dart';
import 'package:cocotea_eco/Screen/Bill.dart/Body.dart';
import 'package:cocotea_eco/Screen/BottomNavBar/BottomNavBar.dart';
import 'package:cocotea_eco/Screen/Dashboard/Appbar.dart';
import 'package:flutter/material.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BillAppbar(context), //menu
      body: BodyBill(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}