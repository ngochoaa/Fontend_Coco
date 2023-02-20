import 'dart:ui';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../dashboard/dashboard_page.dart';

class UpdateInf extends StatefulWidget {
  const UpdateInf({Key? key}) : super(key: key);

  @override
  State<UpdateInf> createState() => _UpdateInfState();
}

class _UpdateInfState extends State<UpdateInf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(),
            
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
                          "assets/image/avatar.jpg",
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Ngọc Hoa",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
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
              padding: const EdgeInsets.only(left: 40, right: 20, bottom: 150),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Tên bạn",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Ngày sinh",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20, top: 150),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Giới tính",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20, top: 300),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Số điện thoại",
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
                      onTap: () {},
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
                                  "CẬP NHẬT THÔNG TIN",
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
      
    );
  }
}
