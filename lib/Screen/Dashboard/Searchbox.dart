import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChange;
  const SearchBox({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Color.fromARGB(255, 198, 194, 194))),
      child: TextField(
        controller: controller,
        onChanged: onChange,
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
      ),
    );
  }
}
