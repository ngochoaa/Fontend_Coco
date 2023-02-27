
import 'package:cocotea_eco/Screen/Menu/components/fav_btn.dart';
import 'package:cocotea_eco/Screen/Menu/components/price.dart';
import 'package:cocotea_eco/Screen/Menu/models/Product.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

import 'components/cart_counter.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {Key? key, required this.product, required this.onProductAdd})
      : super(key: key);

  final Product product;
  final VoidCallback onProductAdd;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String _cartTag = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: ElevatedButton(
                onPressed: () {
                  widget.onProductAdd();
                  setState(() {
                    _cartTag = '_cartTag';
                  });
                  Navigator.pop(context);
                },
                child: Text("Thêm vào giỏ hàng", style: TextStyle(fontSize: 16),),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.37,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  color: Color(0xFFF8F8F8),
                  child: Hero(
                    tag: widget.product.title! + _cartTag,
                    child: Image.asset(widget.product.image!),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  child: CartCounter(),
                )
              ],
            ),
          ),
          SizedBox(height: defaultPadding * 1.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.product.title!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Price(amount: "20.00"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              "Cùng thưởng thức món ngon đến từ Coco Tea ngay nào. Trải nghiệm và khám phá chúng để tìm ra hương vị mới mẻ cho sự yêu thích của mình nhé.",
              style: TextStyle(
                color: kTextColor,
                height: 1.8,
                fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Chi Tiết Sản Phẩm",
        style: TextStyle(color: kTextColor),
      ),
      actions: [
        FavBtn(radius: 20),
        SizedBox(width: defaultPadding),
      ],
    );
  }
}
