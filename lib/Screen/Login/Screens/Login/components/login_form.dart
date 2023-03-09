import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Login/Screens/Login/user.dart';
import 'package:cocotea_eco/Screen/Menu/screens/home/home_screen.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../components/already_have_an_account_acheck.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     User user = User('', '','');
    final _formKey = GlobalKey<FormState>();
    Future save() async {
      var res = await http.post("http://192.168.1.61:3000/user/login",
          headers: <String, String>{
            'Context-Type': 'application/json;charSet=UTF-8'
          },
          body: <String, String>{
            "SDT": user.SDT,
            "Matkhau": user.Matkhau
          });
      print(res.body);
      
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => DashboardPage()));
    }
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: TextEditingController(text: user.SDT),
              onChanged: (value) {
                user.SDT = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Số điện thoại không được để trống';
                } else {
                  return null;
                }
              },
            textInputAction: TextInputAction.next,
            cursorColor: kMainColor,
            
            onSaved: (SDT) {},
            decoration: InputDecoration(
              hintText: "Nhập số điện thọai",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
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
                  if (value.isEmpty) {
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
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
               if (_formKey.currentState.validate()) {
                  save();
                } else {
                  print('not ok');
                }
              },
              child: Text(
                "Đăng Nhập".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
