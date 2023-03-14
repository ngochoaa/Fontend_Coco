import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/image/coco.png', height: 250, width: 250,),
        Text(
          "ĐĂNG KÝ".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: defaultPadding),
        
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
