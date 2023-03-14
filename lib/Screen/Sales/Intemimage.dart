import 'package:flutter/material.dart';
class IntermDrink extends StatelessWidget {
  final String imgSrc;
  const IntermDrink({
    Key? key,
     required this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      height: size.height * 0.45,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}