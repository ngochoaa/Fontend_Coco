import 'dart:ui';
import 'package:cocotea_eco/Screen/Dashboard/Menulist.dart';
import 'package:cocotea_eco/Screen/Dashboard/Searchbox.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Product/Interm.dart';
import 'package:cocotea_eco/Screen/Product/Product.dart';
import 'package:flutter/material.dart';

class BodyPD extends StatefulWidget {
  const BodyPD({Key? key}) : super(key: key);

  @override
  State<BodyPD> createState() => _BodyState();
}

class _BodyState extends State<BodyPD> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChange: (value) {},
          ),
          //  menulist(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemCard(
                              product: products[index],
                              press: () {},
                            ),
                          )),
                    )),
          ),
        ],
      ),
    );
  }
}
