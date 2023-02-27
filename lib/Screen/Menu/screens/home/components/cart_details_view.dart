
import 'package:cocotea_eco/Screen/Menu/controllers/home_controller.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

import 'cart_detailsview_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Giỏ hàng", style: Theme.of(context).textTheme.headline6),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const CartSc()));
              },
              child: Text("Thanh Toán"),
            ),
          )
        ],
      ),
    );
  }
}
