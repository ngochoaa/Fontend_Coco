
import 'package:cocotea_eco/Models/bannerdb.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static var client = http.Client();
  
  static Future<dynamic> fetchCarouselData() async {
    try{
      var response = await client.get(
        Uri.parse('http://192.168.1.61:3000/banner'),
      );
      if(response.statusCode == 200){
        return bannerFromJson(response.body); 
      }
      return null;
    } catch(e){
      return null;
    }
  }
}