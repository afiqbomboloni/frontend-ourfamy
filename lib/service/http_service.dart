import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:ourfamy/model/event_baru.dart';
import 'package:ourfamy/model/signup.dart';


class ApiService {
  Future<http.Response?> register(SignUpBody data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("http://10.0.2.2:3000/api/auth/signup"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}

// Future<EventResult> getEvent() async {
//     final response = await http.get(Uri.parse("http://10.0.2.2:3000/api/events"));
//     if (response.statusCode == 200) {
//       return EventResult.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Gagal menampilkan daftar Event');
//     }
//   }

  Future <List<EventResult>> getEvent() async {
    final response = await http.get(Uri.parse("http://10.0.2.2:3000/api/events/"));
    if (response.statusCode == 200) {
      
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => EventResult.fromJson(data)).toList();
      
    } else {
      throw Exception('Gagal menampilkan daftar Event');
  }

  



}
Future <EventResult> getEventById(String id) async {
    final response = await http.get(Uri.parse("http://10.0.2.2:3000/api/events/$id"));
    if (response.statusCode == 200) {
      
      EventResult jsonResponse = EventResult.fromJson(jsonDecode(response.body));
      return jsonResponse;
      
    } else {
      throw Exception('Gagal menampilkan daftar Event');
  }



}
}