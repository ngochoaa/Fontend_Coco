import 'package:cocotea_eco/Models/UserModel.dart';
import 'package:cocotea_eco/Screen/Bill.dart/Billpage.dart';
import 'package:cocotea_eco/Screen/Cart/Cart.dart';
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Dashboard/FeedScreen.dart';
import 'package:cocotea_eco/Screen/Dashboard/categorycheck/Screen/home.dart';
import 'package:cocotea_eco/Screen/Menu/screens/home/MenuScreen.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Profile/UpdateInf.dart';
import 'package:cocotea_eco/Screen/Profile/profile/profile_screen.dart';
import 'package:cocotea_eco/Screen/Wallet/Wallet_page.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({
    Key? key,
  }) : super(key: key);
  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -7),
                blurRadius: 33,
                color: Color.fromARGB(255, 12, 12, 12).withOpacity(0.11))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardPage()));
            },
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: Color.fromARGB(255, 65, 65, 65),
            ),
            iconSize: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BillPage()));
            },
            icon: SvgPicture.asset(
              "assets/icons/bill.svg",
              color: Color.fromARGB(255, 65, 65, 65),
            ),
            iconSize: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Color.fromARGB(255, 65, 65, 65),
            ),
            iconSize: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WalletPage()));
            },
            icon: SvgPicture.asset(
              "assets/icons/wallet.svg",
              color: Color.fromARGB(255, 65, 65, 65),
            ),
            iconSize: 5,
          ),
          IconButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()))
            },
            icon: SvgPicture.asset(
              "assets/icons/user.svg",
              color: Color.fromARGB(255, 65, 65, 65),
            ),
            iconSize: 5,
          )
        ],
      ),
    );
  }
}
