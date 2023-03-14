import 'dart:convert';
import 'dart:developer';

import 'package:cocotea_eco/Models/category_model.dart';
import 'package:cocotea_eco/Screen/Login/Screens/Login/user.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:http/http.dart' as http;

import '../Models/product_model.dart';

class APIHandler {
  static Future<List<dynamic>> getData(
      { required String target, String? limit}) async {
    try {
      var uri = Uri.http(
          BASE_URL,
          "/$target",
          target == "sanpham"
              ? {
                  "offset": "0",
                  "limit": limit,
                }
              : {});
      var response = await http.get(uri);

      // print("response ${jsonDecode(response.body)}");
      var data = jsonDecode(response.body);
      List tempList = [];
      if (response.statusCode != 200) {
        throw data["message"];
      }
      for (var v in data) {
        tempList.add(v);
        // print("V $v \n\n");
      }
      return tempList;
    } catch (error) {
      log("ERROR!! $error");
      throw error.toString();
    }
  }

  static Future<List<ProductsModel>> getAllProducts(
      { required String limit}) async {
    List temp = await getData(
      target: "sanpham",
      limit: limit,
    );
    return ProductsModel.productsFromSnapshot(temp);
  }

  static Future<List<CategoriesModel>> getAllCategories() async {
    List temp = await getData(target: "category");
    return CategoriesModel.categoriesFromSnapshot(temp);
  }

static Future<ProductsModel> getProductById({ required String id}) async {
    try {
      var uri = Uri.http(
        BASE_URL,
        "/sanpham/$id",
      );
      var response = await http.get(uri);

      // print("response ${jsonDecode(response.body)}");
      var data = jsonDecode(response.body);
      if (response.statusCode != 200) {
        throw data["message"];
      }
      return ProductsModel.fromJson(data);
    } catch (error) {
      log("Không tìm kiếm được sản phẩm $error");
      throw error.toString();
    }
  }
}
