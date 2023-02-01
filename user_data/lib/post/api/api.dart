import 'dart:convert';

import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:user_data/api/example-3/example3module.dart';
import 'package:user_data/post/model/model.dart';

// // var apiUrl = Uri.parse("https://jsonplaceholder.typicode.com/albums");
// // Future<UserModels> createUser(String title) async {
// //   final response = await http
// //       .post(apiUrl, body: {'title': title}); //{"name": name, "job": jobTitle});

// //   if (response.statusCode == 201) {
// //     // String responseString =  response.body;
// //     return UserModels.fromJson(jsonDecode(response.body));
// //     // responseString); // UserModels.fromJson(responseString);
// //     //return UserModelsfromJson(responseString);
// //   } else {
// //     throw Exception("Failed to create album");
// //   }
// // }

Future<Album> createAlbum(
  String title,
) async {
  final response = await http.post(
      Uri.parse("https://jsonplaceholder.typicode.com/albums"),
      headers: <String, String>{
        "Content-Type": "applocation/json; charset=UTF-8"
      },
      body: jsonEncode(<String, String>{
        "title": title,
      }));
  if (response.statusCode == 201) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to create album");
  }
}

var apiUrl = "https://reqres.in/api/users";

Future<UserModel> createUser(
  String name,
  String job,
) async {
  final response = await http.post(Uri.parse(apiUrl),
      headers: <String, String>{
        "Content-Type": "applocation/json; charset=UTF-8"
      },
      body: jsonEncode(<String, String>{"name": name, "job": job}));
  if (response.statusCode == 201) {
    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to create users");
  }
}
// // var apiUrl = Uri.parse("https://jsonplaceholder.typicode.com/albums");
// // Future<UserModels> createUser(String name, String job) async {
// //   final response = await http.post(apiUrl, body: {"name": name, "job": job});
// //   var data = response.body;
// //   print(data);
// // // whatever we get response from the http is store in the data
// //   if (response.statusCode == 201) {
// //     String responseString = response.body;
// //     Data.fromJson(responseString);
// //     //return responseString;
// //     //return UserModels.fromJson(jsonDecode(response.body));
// //     // responseString); // UserModels.fromJson(responseString);
// //     //return UserModelsfromJson(responseString);
// //   } else {
// //     throw Exception("Failed to create album");
// //   }
// // }

 

// var apiUrl = Uri.parse("reqres.in/api/users");

// class APISERVICE {
//   Future<UserModel> createUser(UserModels usermodel) async {
//     final response = await http.post(apiUrl,
//     body: usermodel.toJson()); //{"name": name, "job": jobTitle});

//     if (response.statusCode == 201) {
//       // String responseString =  response.body;
//       return UserModels.fromJson(jsonDecode(response.body));
//       // responseString); // UserModels.fromJson(responseString);
//       //return UserModelsfromJson(responseString);
//     } else {
//       throw Exception("Failed to create album");
//     }
//   }
// }

// class ApiServices{

//   Future <LoginApiResponse> apiCallLogin(Map<String,dynamic> param) async{

//     var url = Uri.parse('https://reqres.in/api/login');
//     var response = await http.post(url, body: param);

//     print('Response status: ${response.statusCode}');
//     print('Response body: ${response.body}');

//     final data = jsonDecode(response.body);
//     return LoginApiResponse(token: data["token"], error: data["error"]);
//   }
// }

// class LoginApiResponse{
//   final String? token;
//   final String? error;

//   LoginApiResponse({this.token,this.error});

// }
// // class ApiPost {
// //  Future<UserModels> login(String email,String job) async {
// //     try {
// //       var response = await post(Uri.parse('reqres.in/api/users'),
// //           body: {'email': email, 'job': job});

// //       if (response.statusCode == 201) {
// //           return UserModels.fromJson(jsonDecode(response.body));
// //        // print(data['token']);
// //        // print('Login successfully');
// //       } else {
// //         print('failed');
// //       }
// //     } catch (e) {
// //       print(e.toString());
// //     }
// //   }
// // }

// Future<UserModel> createUser(String name, String jobTitle) async {
//   String apiUrl = "https://reqres.in/api/users";

//   final response =
//       await http.post(Uri.parse(apiUrl), body: {"name": name, "job": jobTitle});

//   if (response.statusCode == 201) {
//     final String responseString = response.body;

//     return userModelFromJson(responseString);
//   } else {
//     throw Exception("error");
//   }
// }
