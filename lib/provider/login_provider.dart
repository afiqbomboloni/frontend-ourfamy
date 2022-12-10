import 'dart:convert';
import 'dart:developer';
import 'package:ourfamy/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginProvider extends ChangeNotifier {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rememberme = TextEditingController();


  bool loadingLogin = false;

  Future<void> login(BuildContext context) async {
    if (username.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('username atau password tidak boleh kosong')));
      return;
    }
    loadingLogin = true;
    notifyListeners();

    http.Response res = await http.post(
      Uri.parse('http://10.0.2.2:3000/api/auth/signin'),
      body: {'username': username.text, 'password': password.text},
    );

    loadingLogin = false;
    notifyListeners();

    if(res.statusCode == 200){
      log(res.body);
      Map data = jsonDecode(res.body);
      if(data != false){
        log('success');
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return const HomePage();
        }));
      }else if(data == false){
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('username atau password salah'),)
        );
        print('failed');
      }
    }
  }
}