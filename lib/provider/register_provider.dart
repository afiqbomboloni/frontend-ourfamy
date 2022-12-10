import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:ourfamy/service/http_service.dart';
import 'package:ourfamy/model/signup.dart';


class RegisterProvider extends ChangeNotifier {

  final ApiService apiService = ApiService();
  bool loading = false;
  bool isBack = false;
  Future<void> postData(SignUpBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await apiService.register(body))!;
    if (response.statusCode == 200) {
      isBack = true;

    }
    loading = false;
    notifyListeners();
  }
}