import 'dart:developer';

import 'package:cocotea_eco/Models/UserModel.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Profile/until.dart';
import 'package:cocotea_eco/Screen/Sidebar/naviigation_drawer.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../dashboard/dashboard_page.dart';

class UpdateInf extends StatefulWidget {

  @override
  _UpdateInfState createState() => _UpdateInfState();
}

class _UpdateInfState extends State<UpdateInf> {


  final TextEditingController _controllername = new TextEditingController();
  final TextEditingController _controllerphone = new TextEditingController();
  final TextEditingController _controllerdate = new TextEditingController();
  final TextEditingController _controllergender = new TextEditingController();
  String userId = '';


  
 

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigationDrawer()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/image/coco.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Ngọc Hoa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 450, left: 130),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 40, right: 20, bottom: 150),
                child: TextField(
                  controller:_controllername,
                  decoration: InputDecoration(
                    hintText: "Tên của bạn",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20, bottom: 0),
                child: TextField(
                  controller:_controllerdate,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20, top: 150),
                child: TextField(
                  controller:_controllergender,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20, top: 300),
                child: TextField(
                  controller:_controllerphone,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600),
                child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                         // updateUser();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Cập nhật thông tin",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }


//   void updateUser() async {
//     String name = _controllername.text;
//     String date = _controllerdate.text;
//     String gender = _controllergender.text;
//     String phone = _controllerphone.text;
//      if(name.isNotEmpty && phone.isNotEmpty && date.isNotEmpty && gender.isNotEmpty ){
//       var url = baseUrl+"/user/$userId";
//       var bodyData = json.encode({
//         "TenKH" : name,
//         "SDT" : phone,
//         "Gioitinh" : gender,
//         "Ngaysinh" : date,
//       });
//       // var res = await http.post(Uri.parse("$baseUrl/user/login"),
//       var response = await http.put(Uri.parse(url),
//       headers: {
//         "Content-Type" : "application/json",
//         "Accept" : "application/json"
//       },body: bodyData);
//       if(response.statusCode == 200){
//         var messageSuccess = json.decode(response.body)['message'];
//         showMessage(context,messageSuccess);
//       }else {
//          var messageError = "Không thể cập nhật thông tin!!";
//         showMessage(context,messageError);
//       }
//     }
// }
}
