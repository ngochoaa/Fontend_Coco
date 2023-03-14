import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
     required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Chưa có tài khoản ? " : "Đã có tài khoản ? ",
          style: const TextStyle(color: kMainColor),
        ),
        GestureDetector(
          onTap: press as void Function(),
          child: Text(
            login ? "Đăng Ký" : "Đăng Nhập",
            style: const TextStyle(
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
