import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Product/Constant.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/image/coco.png',
          width: 200,
          height: 200,
        ),
        Text(
          "CHÀO MỪNG BẠN ĐẾN\n VỚI COCOTEA",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: defaultPadding * 2),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
