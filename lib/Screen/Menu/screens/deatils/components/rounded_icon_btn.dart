import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({
    Key key,
     this.iconData,
    this.color = kMainColor,
     this.press,
  }) : super(key: key);

  final IconData iconData;
  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
      elevation: 0,
      color: Colors.white,
      height: 36,
      minWidth: 36,
      onPressed: press,
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }
}