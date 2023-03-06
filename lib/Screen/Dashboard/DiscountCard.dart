import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Offers & Discounts",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 100, 98, 98)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
           
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/image/discount.png"))),
                    
            child: DecoratedBox(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            )),
          )
        ],
      ),
    );
  }
}
