import 'package:cocotea_eco/Models/UserModel.dart';
import 'package:cocotea_eco/Screen/Profile/UpdateInf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Thông tin của tôi",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpdateInf(
                          )))
            },
          ),
          ProfileMenu(
            text: "Thông báo",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Cài đặt",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Trợ giúp",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Đăng xuất",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
