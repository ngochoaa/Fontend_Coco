import 'package:flutter/material.dart';
class IntemCard extends StatelessWidget {
  final String title, svgSrc;
  final void Function() press;
  const IntemCard({
    Key? key,
     required this.title,
     required this.svgSrc,
     required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color.fromARGB(255, 163, 163, 163)),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  //margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 207, 207, 207),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    svgSrc,
                    width: size.width * 0.30,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 90, 89, 89),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}