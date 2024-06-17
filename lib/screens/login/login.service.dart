
import 'dart:convert';
import 'package:http/http.dart';
import 'package:client_flutter/shared/config/constants.dart';

class LoginService {

  Future<Response> login(String username, String password) async {
    
    try {
      final response = await post(
        Uri.parse('$url:9090/auth/login'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({'email': username, 'password': password}),
      );

      if (response.statusCode != 200) {
        return response;
      }

      // Store locally on device
      jsonDecode(response.body);

      return response;

    } catch (e) {
      print('Error during login $e');
      return Response("", 500); // or handle error in a different way
    }
  }

}
