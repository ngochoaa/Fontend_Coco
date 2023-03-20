import 'package:flutter/cupertino.dart';

class CategoriesModel with ChangeNotifier {
  String? sId;
  String? name;
  List<String>? products;

  CategoriesModel (
      { this.sId,
       this.name,
       this.products});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    products = json['products'].cast<String>();
  }

   static List<CategoriesModel> categoriesFromSnapshot(List categoriesSnaphot) {
    // print("data ${categoriesSnaphot[0]}");
    return categoriesSnaphot.map((data) {
      return CategoriesModel.fromJson(data);
    }).toList();
  }
}