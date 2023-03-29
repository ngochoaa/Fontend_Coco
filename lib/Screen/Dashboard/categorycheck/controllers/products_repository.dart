import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsRepository {
  var url = "$baseUrl/products/category/";

  loadProductsFromApi(String categoryName) async {
    var response = await http.get(Uri.parse(url + categoryName));
    return json.decode(response.body);
  }
}
