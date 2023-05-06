import 'dart:developer';

import 'package:cocotea_eco/Models/UserModel.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Profile/profile/profile_screen.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../Login/Screens/Login/user.dart';
import '../dashboard/dashboard_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UpdateInf extends StatefulWidget {
  @override
  _UpdateInfState createState() => _UpdateInfState();
}

class _UpdateInfState extends State<UpdateInf> {
  UserModel? userinfor;
  bool isError = false;
  String errorStr = "";

  static Future<UserModel> getUserbyID() async {
    final storage = new FlutterSecureStorage();

    String? userId = await storage.read(key: 'cookie');
    try {
      var response = await http.get(
        Uri.parse("$baseUrl/user/$userId"),
      );

      print("response ${jsonDecode(response.body)}");
      var data = jsonDecode(response.body);
      if (response.statusCode != 200) {
        throw data["message"];
      }
      return UserModel.fromJson(data);
    } catch (error) {
      log("Không tìm kiếm được user $error");
      throw error.toString();
    }
  }

  final _formKey = GlobalKey<FormState>();
  User user = User('', '', '', '', '', '');

  Future updateUser() async {
    final storage = new FlutterSecureStorage();

    String? userId = await storage.read(key: 'cookie');
    print(userId);
    print("$baseUrl/user/$userId");
    var res = await http.put(Uri.parse("$baseUrl/user/$userId"),
        headers: <String, String>{
          'Context-Type': 'application/json;charSet=UTF-8'
        },
        body: <String, String>{
          'TenKH': user.TenKH,
          'Gioitinh': user.Gioitinh,
          'Ngaysinh': user.Ngaysinh
        });

    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Center(
          child: Text(
            'Chi Tiết Thông Tin',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
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
                      padding: EdgeInsets.only(top: 10, bottom: 100),
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: TextEditingController(text: user.TenKH),
                        onChanged: (value) {
                          user.TenKH = value;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Tên của bạn không được để trống';
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        cursorColor: kMainColor,
                        onSaved: (TenKH) {},
                        decoration: InputDecoration(
                          hintText: "Nhập tên của bạn",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: TextEditingController(text: user.Gioitinh),
                        onChanged: (value) {
                          user.Gioitinh = value;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Giới tính của bạn không được để trống';
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        cursorColor: kMainColor,
                        onSaved: (Gioitinh) {},
                        decoration: InputDecoration(
                          hintText: "Nhập ngày sinh của bạn",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Icon(Icons.date_range),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: TextEditingController(text: user.Ngaysinh),
                        onChanged: (value) {
                          user.Ngaysinh = value;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ngày sinh của bạn không được để trống';
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        cursorColor: kMainColor,
                        onSaved: (Ngaysinh) {},
                        decoration: InputDecoration(
                          hintText: "Nhập giới tính của bạn",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
                      const SizedBox(height: defaultPadding),
                      Hero(
                        tag: "update_btn",
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              updateUser();
                            } else {
                              print('not ok');
                            }
                          },
                          child: Text(
                            "Cập nhật thông tin".toUpperCase(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 600),
              //   child: Container(
              //       width: 300,
              //       decoration: BoxDecoration(
              //         color: kMainColor,
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //       child: Material(
              //         color: Colors.transparent,
              //         child: InkWell(
              //           onTap: () {
              //             // updateUser();
              //           },
              //           child: Padding(
              //             padding: const EdgeInsets.all(15.0),
              //             child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   SizedBox(
              //                     height: 10,
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       "Cập nhật thông tin",
              //                       style: TextStyle(
              //                           color: Colors.white,
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: 18),
              //                     ),
              //                   ),
              //                 ]),
              //           ),
              //         ),
              //       )),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
