
import 'package:cocotea_eco/Screen/Detail/Add&Remove.dart';
import 'package:cocotea_eco/Screen/Detail/OrderButton.dart';
import 'package:cocotea_eco/Screen/Detail/Title&prince.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

class IntemInf extends StatelessWidget {
  const IntemInf({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(children: [
        shopName(name: "CocoTea"),
        titleandrating(),
        Text(
          "Trà sữa Michio chỉ có tại CocoTea hãy thưởng thức ngay và nhận nhiều ưu đãi hấp dẫn từ cửa hàng.",
          style: TextStyle(
              color: Color.fromARGB(255, 111, 109, 109),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 110),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    border:
                        Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('S',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: kMainColor,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    ),
                    child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('M',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: kMainColor,
                      border:
                          Border.all(color: Color.fromARGB(255, 164, 164, 164)),
                    ),
                    child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('L',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.only(left: 110, top: 20, bottom: 30),
          child: CartCounter(),
        ),
        
        OrderButton(
          size: size,
          press: () {},
        )
      ]),
    ))));
  }

  Row shopName({ String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: Color.fromARGB(255, 114, 112, 112),
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
