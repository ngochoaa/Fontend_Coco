
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:flutter/material.dart';

import 'Cofirm.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            color: Color.fromARGB(255, 106, 185, 109),
            child: Stack(children: [
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 300)),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 201, 201, 201)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 00)),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 106, 185, 109),
                      border:
                          Border.all(color: Color.fromARGB(255, 201, 201, 201)),
                    )),
              ]),
              Padding(
                padding: EdgeInsets.only(top: 440, left: 30, right: 30),
                child: Container(
                  height: 45,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Color.fromARGB(255, 201, 201, 201)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Nhập số điện thoại',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 445, left: 35),
                child: Container(
                    child: Icon(
                  Icons.phone,
                  color: Colors.grey,
                  size: 40.0,
                )),
              ),

              Padding(
                padding: EdgeInsets.only(top: 673, left: 175),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Color.fromARGB(255, 109, 109, 109),
                        ),
                        borderRadius: BorderRadius.circular(100))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 675, left: 175),
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardPage()));
                      },
                      icon: Icon(
                        Icons.home,
                        size: 40,
                        color:Color.fromARGB(255, 106, 185, 109),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 550, left: 130),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 106, 185, 109),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          primary: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ConfirmPage()));
                        },
                        child: const Text('ĐĂNG NHẬP'),
                      ),
                    ],
                  ),
                ),
              ),

              //chào mừng
              Padding(
                  padding: EdgeInsets.only(top: 200, left: 115),
                  child: Text('Chào mừng bạn đến với\n            COCO TEA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white))),
              // Text đăng nhập
              Padding(
                  padding: EdgeInsets.only(top: 370, left: 115),
                  child: Text('ĐĂNG NHẬP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 114, 113, 113)))),

              Padding(
                padding: EdgeInsets.only(left: 50),
                child:
                    Image.asset('image/logotrang.png', width: 300, height: 210),
              ),
            ])),
      )),
    );
  }
}
