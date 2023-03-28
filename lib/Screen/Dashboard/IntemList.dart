import 'package:cocotea_eco/Screen/Dashboard/IntemCard.dart';
import 'package:cocotea_eco/Screen/Detail/Detailpage.dart';
import 'package:flutter/material.dart';

class IntemList extends StatelessWidget {
  const IntemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          IntemCard(
            svgSrc: "assets/image/trasuamichio.jpg",
            title: "Trà Sữa Michio",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsPage();
                  },
                ),
              );
            },
          ),
          IntemCard(
            svgSrc: "assets/image/trasuaoolong.jpg",
            title: "Trà Sữa Ô Long",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsPage();
                  },
                ),
              );
            },
          ),
          IntemCard(
            svgSrc: "assets/image/bacxiucotdua.jpg",
            title: "Bạc Xỉu Cốt Dừa",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
