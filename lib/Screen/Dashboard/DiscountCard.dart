import 'package:cocotea_eco/Components/banner_data_found.dart';
import 'package:cocotea_eco/Controller/banner_controller.dart';
import 'package:cocotea_eco/Screen/Dashboard/DiscountCard_Loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GetBuilder<BannerController>(
            builder: (_c){
              if(_c.isLoading)
                if(_c.bannerData.length>0)
                  return BannerDataFound(_c.bannerData);
                else
                  return DiscountCard_Loading();
              else
                if(_c.bannerData.length>0)
                  return BannerDataFound(_c.bannerData);
                else
                  return Container();
            },
          )
      ),
    );
  }
}
