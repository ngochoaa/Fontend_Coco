import 'package:flutter/cupertino.dart';

class VoucherModel with ChangeNotifier {
  String? sId;
  String? tenUD;
  String? trangthai;
  String? ngayUD;
  String? ngayKT;
  String? giaUD;
  String? cODE;

  VoucherModel(
      {this.sId,
      this.tenUD,
      this.trangthai,
      this.ngayUD,
      this.ngayKT,
      this.giaUD,
      this.cODE});

  VoucherModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    tenUD = json['TenUD'];
    trangthai = json['Trangthai'];
    ngayUD = json['NgayUD'];
    ngayKT = json['NgayKT'];
    giaUD = json['GiaUD'];
    cODE = json['CODE'];
  }

     static List<VoucherModel> vouchersFromSnapshot(List voucherSnaphot) {
    // print("data ${productSnaphot[0]}");
    return voucherSnaphot.map((data) {
      return VoucherModel.fromJson(data);
    }).toList();
  }
}