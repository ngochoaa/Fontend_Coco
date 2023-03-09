import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/image/coco.png', width: 250, height: 250,),
        SizedBox(height: 50,),
        Text(
          "ĐĂNG NHẬP",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}