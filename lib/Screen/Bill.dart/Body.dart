import 'dart:ui';
import 'package:cocotea_eco/Screen/Bill.dart/ListBill.dart';
import 'package:cocotea_eco/Screen/Bill.dart/Statusbill.dart';
import 'package:flutter/material.dart';

class BodyBill extends StatefulWidget {
  const BodyBill({Key? key}) : super(key: key);

  @override
  State<BodyBill> createState() => _BodyState();
}

class _BodyState extends State<BodyBill> {
  static const time = '14/10/2022';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StatusBill(),
          Stack(
            children: [
              Container(child: const ListBill(time: time)),
              Container(
                 child: Padding(
                   padding: const EdgeInsets.only(left:10, top: 10),
                   child: Image.asset('assets/image/bacxiucotdua.jpg',width: 60, height: 60,),
                 )
              )
            ],
          )
          
        ],
      ),
    );
  }
}
