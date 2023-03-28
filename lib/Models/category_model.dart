import 'package:flutter/cupertino.dart';

class CategoriesModel with ChangeNotifier {
  String? sId;
  String? name;

  CategoriesModel({this.sId, this.name});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  static List<CategoriesModel> categoriesFromSnapshot(List categoriesSnaphot) {
    return categoriesSnaphot.map((data) {
      return CategoriesModel.fromJson(data);
    }).toList();
  }
}
