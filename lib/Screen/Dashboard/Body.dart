import 'dart:math';
import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:cocotea_eco/Models/product_model.dart';
import 'package:cocotea_eco/Screen/Dashboard/DiscountCard.dart';
import 'package:cocotea_eco/Screen/Dashboard/FeedScreen.dart';
import 'package:cocotea_eco/Screen/Dashboard/widgets/appbar_icons.dart';
import 'package:cocotea_eco/Screen/Dashboard/widgets/feed_grid.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class BodyDB extends StatefulWidget {
  const BodyDB({Key? key}) : super(key: key);

  @override
  State<BodyDB> createState() => _BodyState();
}

class _BodyState extends State<BodyDB> {
  @override
  Widget build(BuildContext context) {
    //------------SEARCHERRORRR------------------
    // List<ProductsModel> productData = [ProductsModel()];

    // List<ProductsModel> products = [];

    // @override
    // void initState() {
    //   super.initState();
    //   products = productData;
    // }

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SearchBox(
          //   onChange: (value) {},
          // ),
          // menulist(),
          // const IntemList(),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color.fromARGB(255, 198, 194, 194))),
            child: TextField(
              //  controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: SvgPicture.asset(
                    "assets/icons/search1.svg",
                    height: 35,
                    width: 35,
                    color: Color.fromARGB(255, 43, 84, 45),
                  ),
                  hintText: "Tìm Kiếm",
                  fillColor: Colors.white),
                  //-------------SEACHERROR----------
              // onChanged: (query) {
              //   final searchReult = productData.where((element) {
              //     final producttitle = element.tenSP?.toLowerCase();
              //     final queryLoweCase = query.toLowerCase();

              //     return producttitle!.contains(queryLoweCase);
              //   }).toList();

              //   products = searchReult;
              //   setState(() {});
              // },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: size.height * 0.25,
              child: Swiper(
                itemCount: 3,
                itemBuilder: (ctx, index) {
                  return const DiscountCard();
                },
                autoplay: true,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Color.fromARGB(255, 24, 115, 12))),
              )),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Sản phẩm nổi bật",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                AppBarIcons(
                  function: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const FeedsScreen()));
                  },
                  icon: Icons.arrow_right,
                ),
              ],
            ),
          ),
          FutureBuilder<List<ProductsModel>>(
              future: APIHandler.getAllProducts(limit: "3"),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  Center(
                    child: Text("EROR ${snapshot.error}"),
                  );
                } else if (snapshot.data == null) {
                  const Center(
                    child: Text("Chưa có sản phẩm"),
                  );
                }
                return FeedsGridWidget(productsList: snapshot.data!);
              }))
        ],
      ),
    );
  }
}
