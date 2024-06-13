import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginService {

  final String _apiUrl = 'http://localhost:9090/';

  Future<String> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$_apiUrl/authenticate'),
      body: jsonEncode({'username': username, 'password': password}),
    );

    return jsonDecode(response.body)['token'];
  }

}
