
import 'package:cocotea_eco/Screen/Detail/Detail.dart';
import 'package:cocotea_eco/Screen/Detail/IntermInf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Intemimage.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 61, 30),
      appBar: detailsAppbar(context),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        IntermDrink(imgSrc: "assets/image/trasuamichio.jpg"),
        Expanded(
          child: IntemInf(),
        ),
       
      ],
    );
  }
}
