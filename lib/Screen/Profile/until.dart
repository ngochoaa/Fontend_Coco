import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Profile/UpdateInf.dart';
import 'package:flutter/material.dart';

import '../Sidebar/naviigation_drawer.dart';

showMessage(BuildContext context,String contentMessage) {


    Widget yesButton = ElevatedButton(
      child: Text("OK",style: TextStyle(color: kMainColor)),
      onPressed:  () {
        Navigator.pop(context);
       
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
       NavigationDrawer()), (Route<dynamic> route) => false);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Message"),
      content: Text(contentMessage),
      actions: [
        yesButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }