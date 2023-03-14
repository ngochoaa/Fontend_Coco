import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    Key ?key,
     required this.amount,
  }) : super(key: key);
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: amount,
            style: TextStyle(color: Colors.black),
          ),
        ],
        
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.w600, color: kMainColor),
            text: "\VND ",
      ),
    );
  }
}
