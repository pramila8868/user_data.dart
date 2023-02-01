import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  var apiUrl = "https://reqres.in/api/login";

  void login(
//  try{}
    String email,
    String password,
  ) async {
    setLoading(true);
    try {
      final response = await http.post(Uri.parse(apiUrl),
          headers: <String, String>{
            "Content-Type": "applocation/json; charset=UTF-8"
          },
          body: {
            "email": email,
            "password": password
          });
      if (response.statusCode == 201) {
        //return UserModel.fromJson(jsonDecode(response.body));
        print("sucess");
        setLoading(false);
      } else {
        setLoading(false);
        throw Exception("Failed to create users");
      }
    } catch (e) {}
  }
}
