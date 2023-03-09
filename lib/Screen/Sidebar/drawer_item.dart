import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key key,  this.name,  this.icon,  this.onPressed}) : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon, size: 26, color: kMainColor,),
            const SizedBox(width: 40,),
            Text(name, style: const TextStyle(fontSize: 20, color: kTextColor),)
          ],
        ),
      ),
    );
  }
}
