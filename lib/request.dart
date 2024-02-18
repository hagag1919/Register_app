import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl =
    "http://193.227.14.58/api/student-courses-eligible?studentId=";
const String id = "20216010";
const String token =
    "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyMDIxNjAxMCIsImF1dGgiOiJST0xFX1NUVURFTlQiLCJleHAiOjE3MDgzNTgyMjZ9.a_jkH3e721cwJdflznfCJo9D7nc3MQKhhdB0vaK4dA59uiBanXlZ-phBPdLFXU5uPv5nbkMpps39YAudMJxkTQ";

class Request {
  Future<bool> checkRegisterState() async {
    try {
      if (token.isNotEmpty) {
        final response = await http.get(
          Uri.parse(baseUrl + id),
          headers: {
            'accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        );
        if (response.statusCode == 200) {
          final data = json.decode(response.body);

          if (data['maxElectiveHours'] != null) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
