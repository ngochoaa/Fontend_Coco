
import 'package:cocotea_eco/Screen/Bill.dart/Billpage.dart';
import 'package:cocotea_eco/Screen/Cart/Cart.dart';
import 'package:cocotea_eco/Screen/Login/Screens/Login/login_screen.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Profile/UpdateInf.dart';
import 'package:cocotea_eco/Screen/Sidebar/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: userAppbar(),
      body: getBody(context),
    );
  }

    userAppbar() {
    child:
    Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://kynguyenlamdep.com/wp-content/uploads/2022/06/avatar-cute-meo-con-than-chet-768x763.jpg'),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('hi', style: TextStyle(fontSize: 20, color: kTextColor)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('hi', style: TextStyle(fontSize: 14, color: kTextColor))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  getBody(context) {
    const SizedBox(
      height: 40,
    );
    const Divider(thickness: 1, height: 10, color: kMainColor);
    const SizedBox(
      height: 40,
    );
    DrawerItem(
      name: 'Thông tin',
      icon: Icons.people,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>  UpdateInf()));
      },
    );
    const SizedBox(
      height: 30,
    );
    DrawerItem(
        name: 'Giỏ hàng',
        icon: Icons.shopping_cart,
        onPressed: () => onItemPressed(context, index: 1));
    const SizedBox(
      height: 30,
    );
    const Divider(
      thickness: 1,
      height: 10,
      color: kMainColor,
    );
    const SizedBox(
      height: 30,
    );
    DrawerItem(
        name: 'Đơn hàng',
        icon: Icons.payment,
        onPressed: () => onItemPressed(context, index: 2));
    const SizedBox(
      height: 30,
    );
    DrawerItem(
        name: 'Đăng xuất',
        icon: Icons.logout,
        onPressed: () => onItemPressed(context, index: 3));
  }

 


  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CartPage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const BillPage()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
        break;
    }
  }

}

