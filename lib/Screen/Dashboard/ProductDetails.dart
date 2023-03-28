import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:cocotea_eco/Models/product_model.dart';
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Detail/Add&Remove.dart';
import 'package:cocotea_eco/Screen/Detail/OrderButton.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ProductsModel? productsModel;
  bool isError = false;
  String errorStr = "";
  Future<void> getProductInfo() async {
    try {
      productsModel = await APIHandler.getProductById(id: widget.id);
    } catch (error) {
      isError = true;
      errorStr = error.toString();
      log("error $error");
    }
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    getProductInfo();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: isError
            ? Center(
                child: Text(
                  "ERROR $errorStr",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              )
            : productsModel == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        AppBar(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            leading: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DashboardPage()));
                              },
                              icon: Icon(Icons.arrow_back),
                              color: Colors.black,
                            ),
                            title: Text(
                              'Chi tiết sản phẩm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.4,
                          child: Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return FancyShimmerImage(
                                width: double.infinity,
                                imageUrl: productsModel!.hinhSP!,
                                boxFit: BoxFit.fill,
                              );
                            },

                            autoplay: true,
                            itemCount: 3,
                            pagination: const SwiperPagination(
                              alignment: Alignment.bottomCenter,
                              builder: DotSwiperPaginationBuilder(
                                color: Colors.white,
                                activeColor: kMainColor,
                              ),
                            ),
                            // control: const SwiperControl(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromARGB(255, 114, 112, 112),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Coco Tea',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  productsModel!.tenSP.toString(),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: productsModel!.giaSP.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                                color: Color.fromARGB(
                                                    255, 84, 128, 85),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Text(
                                productsModel!.description.toString(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 111, 109, 109),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 140, top: 20, bottom: 30),
                          child: CartCounter(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Center(
                            child: OrderButton(
                              size: size,
                              press: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
      ),
    );
  }
}
