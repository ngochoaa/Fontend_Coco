import 'package:cocotea_eco/Models/category_model.dart';
import 'package:flutter/cupertino.dart';
class ProductsModel with ChangeNotifier {
  String? sId;
  String? tenSP;
  CategoriesModel? loaiSP;
  String? giaSP;
  String? description;
  String? hinhSP;

  ProductsModel(
      {this.sId,
      this.tenSP,
      this.loaiSP,
      this.giaSP,
      this.description,
      this.hinhSP,});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    tenSP = json['TenSP'];
    loaiSP =
        json['LoaiSP'] != null ?  CategoriesModel.fromJson(json['LoaiSP']) : null;
    giaSP = json['GiaSP'];
    description = json['Description'];
    hinhSP = json['HinhSP'];
  }

 static List<ProductsModel> productsFromSnapshot(List productSnaphot) {
    // print("data ${productSnaphot[0]}");
    return productSnaphot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }
}

