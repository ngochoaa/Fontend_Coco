import 'package:flutter/material.dart';
class listfood extends StatelessWidget {
  final String title;
  final bool isActive;
  final void Function() press;
  const listfood(
      {Key key,
       this.title,
      this.isActive = false,
       this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(color: Color.fromARGB(255, 129, 127, 127), fontWeight: FontWeight.bold)
                  : TextStyle(fontSize: 16,color: Color.fromARGB(255, 129, 127, 127), fontWeight: FontWeight.bold),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
          ],
        ),
      ),
    );
  }
}