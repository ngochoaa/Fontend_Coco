import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:cocotea_eco/Models/product_model.dart';
import 'package:cocotea_eco/Screen/Dashboard/DiscountCard.dart';
import 'package:cocotea_eco/Screen/Dashboard/FeedScreen.dart';
import 'package:cocotea_eco/Screen/Dashboard/IntemList.dart';
import 'package:cocotea_eco/Screen/Dashboard/Menulist.dart';
import 'package:cocotea_eco/Screen/Dashboard/Searchbox.dart';
import 'package:cocotea_eco/Screen/Dashboard/widgets/appbar_icons.dart';
import 'package:cocotea_eco/Screen/Dashboard/widgets/feed_grid.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class BodyDB extends StatefulWidget {
  const BodyDB({Key? key}) : super(key: key);

  @override
  State<BodyDB> createState() => _BodyState();
}

class _BodyState extends State<BodyDB> {

  //   @override
  // void didChangeDependencies() {
  //   APIHandler.getAllProducts();
  //   super.didChangeDependencies();
  // }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChange: (value) {},
          ),
          menulist(),
          const IntemList(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Ưu đãi & Mã giảm giá',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
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
                                icon: IconlyBold.arrowRight2),
                          ],
                        ),
                      ),
                      FutureBuilder<List<ProductsModel>>(
                          future: APIHandler.getAllProducts(limit: "3"),
                          builder: ((context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasError) {
                              Center(
                                child:
                                    Text("An error occured ${snapshot.error}"),
                              );
                            } else if (snapshot.data == null) {
                              const Center(
                                child: Text("No products has been added yet"),
                              );
                            }
                            return FeedsGridWidget(
                                productsList: snapshot.data!);
                          }))
        ],
      ),
    );
  }
}