
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
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
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(25),
                      //   topRight: Radius.circular(25),
                    )),
              ]),
              //OTP

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
                  padding: EdgeInsets.only(top: 671, left: 173),
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
                        color: Color.fromARGB(255, 106, 185, 109),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 550, left: 129),
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
                                  builder: (context) => const DashboardPage()));
                        },
                        child: const Text('XÁC NHẬN OTP'),
                      ),
                    ],
                  ),
                ),
              ),

              //chào mừng
              Padding(
                  padding: EdgeInsets.only(top: 400, left: 20),
                  child: Text(
                      'Hãy điền OTP gồm 6 chữ số vừa được gửi đến xxxxxxxx23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 114, 113, 113)))),
              // Text OTP
              //MA OTP
              Padding(
                padding: EdgeInsets.only(top: 450, left: 25),
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    )),
              ),
               Padding(
                padding: EdgeInsets.only(top: 450, left: 75),
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    )),
              ),
               Padding(
                padding: EdgeInsets.only(top: 450, left: 125),
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    )),
              ),
               Padding(
                padding: EdgeInsets.only(top: 450, left: 175),
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    )),
              ),
               Padding(
                padding: EdgeInsets.only(top: 450, left: 225),
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    )),
              ),
               Padding(
                padding: EdgeInsets.only(top: 450, left: 275),
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    )),
              ),

              Padding(
                  padding: EdgeInsets.only(top: 350, left: 115),
                  child: Text('XÁC NHẬN OTP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 114, 113, 113)))),
              Padding(
                  padding: EdgeInsets.only(top: 500, left: 20),
                  child: Text('Không nhận được mã? Gửi lại',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
