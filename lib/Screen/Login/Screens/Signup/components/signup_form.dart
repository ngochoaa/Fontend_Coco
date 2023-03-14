import 'package:cocotea_eco/Screen/Login/Screens/Login/user.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../Login/login_screen.dart';
import 'package:http/http.dart' as http;

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = User('', '', '');
    final _formKey = GlobalKey<FormState>();
    Future save() async {
      var res = await http.post(Uri.parse("$baseUrl/user/create"),
          headers: <String, String>{
            'Context-Type': 'application/json;charSet=UTF-8'
          },
          body: <String, String>{
            "SDT": user.SDT,
            "Matkhau": user.Matkhau,
            "TenKH": user.TenKH
          });
      print(res.body);
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => LoginScreen()));
    }

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: TextEditingController(text: user.SDT),
              onChanged: (value) {
                user.SDT = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Số điện thoại không được để trống';
                } else {
                  return null;
                }
              },
              textInputAction: TextInputAction.next,
              cursorColor: kMainColor,
              decoration: InputDecoration(
                hintText: "Nhập số điện thoại",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.phone),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                controller: TextEditingController(text: user.Matkhau),
                onChanged: (value) {
                  user.Matkhau = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mật khẩu không được để trống';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
                obscureText: true,
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  hintText: "Nhập mật khẩu",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                controller: TextEditingController(text: user.TenKH),
                onChanged: (value) {
                  user.TenKH = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nhập tên của bạn';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  hintText: "Nhập tên của bạn",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.people),
                  ),
                ),
              ),
            ),

            const SizedBox(height: defaultPadding / 2),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  save();
                } else {
                  print('not ok');
                }
              },
              child: Text("Đăng ký".toUpperCase()),
            ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
