
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            color: Color.fromARGB(255, 106, 185, 109),
            child: Stack(children: [
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 00)),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child:
                    Image.asset('image/logotrang.png', width: 350, height: 210),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300, left: 150),
                child: Text(
                  'CHÀO BẠN!',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 673, left: 185),
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
                padding: EdgeInsets.only(top: 675, left: 190),
                child: Container(
                    child: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 106, 185, 109),
                  size: 40.0,
                )),
              ),
            ])),
      )),
    );
  }
}
