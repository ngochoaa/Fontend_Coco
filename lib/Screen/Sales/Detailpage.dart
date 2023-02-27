
import 'package:cocotea_eco/Screen/Detail/Detail.dart';
import 'package:cocotea_eco/Screen/Detail/IntermInf.dart';
import 'package:cocotea_eco/Screen/Sales/Detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Intemimage.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsSaleAppbar(context),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        IntermDrink(imgSrc: "assets/image/discount.png"),
        Expanded(
          child: IntemInf(),
        ),
       
      ],
    );
  }
}
