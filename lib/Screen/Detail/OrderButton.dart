
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
    required this.size,
    required this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              onPressed:
              () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const CartScreen()));
              };
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  "assets/icons/basket.svg",
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Thêm vào giỏ hàng",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
