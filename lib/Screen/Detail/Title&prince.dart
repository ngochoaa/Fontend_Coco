import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class titleandrating extends StatelessWidget {
  const titleandrating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Column(
                
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trà Sữa Michio",
                style: TextStyle(
                    color: Color.fromARGB(255, 111, 109, 109),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
             

            ],
          )),
          priceInterm(context)  
        ],
      ),
    );
  }

  Container priceInterm(BuildContext context ) {
    return Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "29.000đ",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Color.fromARGB(255, 84, 128, 85), fontWeight: FontWeight.bold),
          ),
        );
  }
}
