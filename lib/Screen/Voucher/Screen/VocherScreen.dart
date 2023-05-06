import 'dart:convert';

import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class Promotion {
  String tenUD;
  String giaUD;
  String cODE;
  String description;
  String HinhUD;

  Promotion(
      {required this.tenUD,
      required this.giaUD,
      required this.cODE,
      required this.description,
      required this.HinhUD});
}

class VoucherScreen extends StatefulWidget {
  @override
  _VoucherScreenState createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {
  List<Promotion> promotions = [];

  void copyPromotionCode(String code) {
    Clipboard.setData(ClipboardData(text: code));
    // Hiển thị thông báo khi sao chép thành công.
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Đã sao chép mã ưu đãi $code'),
      duration: Duration(seconds: 2),
    ));
  }

  // Hàm initState được gọi khi widget được khởi tạo, bạn có thể thực hiện các tác vụ khởi tạo ở đây.
  @override
  void initState() {
    super.initState();
    fetchPromotions(); // Gọi hàm fetchPromotions để lấy dữ liệu từ API.
  }

  // Hàm fetchPromotions để lấy dữ liệu từ API và cập nhật vào danh sách promotions.
  void fetchPromotions() async {
    // Thực hiện lấy dữ liệu từ API.
    final response = await http.get(Uri.parse('$baseUrl/uudai'));

    // Chuyển đổi dữ liệu từ dạng JSON sang dạng List<Promotion>.
    List<Promotion> fetchedPromotions =
        (jsonDecode(response.body) as List).map((promotionData) {
      return Promotion(
        tenUD: promotionData['TenUD'],
        cODE: promotionData['CODE'],
        description: promotionData['Decription'],
        giaUD: promotionData['GiaUD'],
        HinhUD: promotionData['HinhUD'],
      );
    }).toList();

    // Cập nhật danh sách promotions với các ưu đãi lấy được từ API.
    setState(() {
      promotions = fetchedPromotions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mã Ưu Đãi'),
        backgroundColor: kMainColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardPage()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            )),
      ),
      body: ListView.builder(
        itemCount: promotions.length,
        itemBuilder: (context, index) {
          final promotion = promotions[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => copyPromotionCode(
                  promotion.cODE), // Xử lý sự kiện nhấn vào phần tử.
              child: ListTile(
                leading: Image.network(
                  promotion.HinhUD,
                  width: 100, // Kích thước rộng của ảnh
                  height: 200, // Kích thước cao của ảnh
                  fit: BoxFit.cover, // Hiển thị ảnh theo tỉ lệ khung hình
                ),
                title: Text(
                  promotion.tenUD,
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      promotion.description,
                      style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mã code: ${promotion.cODE}',
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // trailing: Text('${promotion.giaUD}đ'),
              ),
            ),
          );
        },
      ),
    );
  }
}
