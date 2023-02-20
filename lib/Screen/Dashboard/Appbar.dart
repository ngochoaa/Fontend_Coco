import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
  AppBar homeAppBar(BuildContext context) {
    return AppBar(
     backgroundColor: Colors.white,
     elevation: 0,
      leading: IconButton(
          onPressed: null, icon: SvgPicture.asset("assets/icons/menu.svg", color: Color.fromARGB(255, 40, 100, 54),)),
          title: RichText(text:TextSpan(
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold,),
            children: [
              
              TextSpan(text: "CocoTea" , style: TextStyle(color: Color.fromARGB(255, 49, 125, 51)),),
            ]
          )),
          actions: <Widget>[IconButton(onPressed: null, icon: SvgPicture.asset("assets/icons/user.svg", color: Colors.grey,))],
    );
  }