import 'package:cocotea_eco/Screen/Bill.dart/Billpage.dart';
import 'package:cocotea_eco/Screen/BottomNavBar/BottomNavBar.dart';
import 'package:cocotea_eco/Screen/Cart/Cart.dart';
import 'package:cocotea_eco/Screen/Login/Screens/Login/login_screen.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Profile/UpdateInf.dart';
import 'package:cocotea_eco/Screen/Sidebar/drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: kMainColor),
              const SizedBox(height: 40,),
              DrawerItem(
                name: 'Thông tin',
                icon: Icons.people,
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Giỏ hàng',
                  icon: Icons.shopping_cart,
                  onPressed: ()=> onItemPressed(context, index: 1)
              ),
              const SizedBox(height: 30,),
              const Divider(thickness: 1, height: 10, color:kMainColor,),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Đơn hàng',
                  icon: Icons.payment,
                  onPressed: ()=> onItemPressed(context, index: 2)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Đăng xuất',
                  
                  icon: Icons.logout,
                  onPressed: (
                    
                  )=> onItemPressed(context, index: 3)
              ),
            ],
          
            
          ),
          
        ),
        
      ),
    );
  }

  void onItemPressed(BuildContext context, { int index}){
    Navigator.pop(context);

    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateInf()));
        break;
        case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
        break;
        case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const BillPage()));
        break;
        case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
        break;
    }
  }

  Widget headerWidget() {
    const url = 'https://kynguyenlamdep.com/wp-content/uploads/2022/06/avatar-cute-meo-con-than-chet-768x763.jpg';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Ngọc Hoa', style: TextStyle(fontSize: 20, color: kTextColor)),
            SizedBox(height: 10,),
            Text('hoangochuynh252@gmail.com', style: TextStyle(fontSize: 14, color: kTextColor))
          ],
        )
      ],
    );

  }
}



