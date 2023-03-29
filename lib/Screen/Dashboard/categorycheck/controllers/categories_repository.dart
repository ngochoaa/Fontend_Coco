import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CategoriesRepository {
  var url = "$baseUrl/categories";

  loadCategoriesFromApi() async {
    var response = await http.get(Uri.parse(url));
    var categoriesJson = json.decode(response.body);
    return categoriesJson;
  }
}
