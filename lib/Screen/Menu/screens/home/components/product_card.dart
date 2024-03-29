import 'package:cocotea_eco/Screen/Menu/components/fav_btn.dart';
import 'package:cocotea_eco/Screen/Menu/components/price.dart';
import 'package:cocotea_eco/Screen/Menu/models/Product.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
     required this.product,
     required this.press,
  }) : super(key: key);

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.title,
              child: Image.asset(product.image),
            ),
            SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
            ),
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Price(amount: "20.000"),
                FavBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
