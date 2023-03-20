import 'package:flutter/cupertino.dart';

class UserModel with ChangeNotifier {
  String? userID;
  String? phone;
  String? name;
  String? date;
  String? gender;

  UserModel(
      {this.userID,
      this.phone,
      this.name,
      this.date,
      this.gender});

  UserModel.fromJson(Map<String, dynamic> json) {
    userID = json['_id'];
    phone = json['SDT'];
    name = json['TenKH'];
    date = json['Ngaysinh'];
    gender = json['Gioitinh'];
  }
   static List<UserModel> usersFromSnapshot(List userSnaphot) {
    // print("data ${productSnaphot[0]}");
    return userSnaphot.map((data) {
      return UserModel.fromJson(data);
    }).toList();
  }
}