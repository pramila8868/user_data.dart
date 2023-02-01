import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:user_data/user_data/home/homemodel.dart';

import 'user_model.dart';

String baseUri = "https://reqres.in/api/users?page=2";



List<User> userList =
    []; // needed WHEN  we donot have array name IN MODEL OF URL
Future<List<User>> fetchUserDetails() async {
  // final response = await http.get(Uri.parse(baseUri));
  final response = await http.get(Uri.parse(baseUri));
  var datas = json.decode(response.body);
  var finalList = datas['data']; // extra

  print(datas.toString()); // all data are comes in datas
  if (response.statusCode == 200) {
    //userList.clear();
    // If the server did return a 200 OK response,
    for (Map<String, dynamic> user in finalList) {
      // User usersdetail = User(
      //   id: user['id'],
      //   firstName: user["first_name"].toString(),
      //   lastName: user["last_name"].toString(),
      //   email: user["email"].toString(),
      //   avatar: user['avatar'].toString(),
      // );
     // userList.add(usersdetail);
      userList.add(User.fromJson(user));

    }

    return userList;
    // then parse the JSON.
    // return User.fromJson(jsonDecode(response.body));
    //return parseProducts(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}




  
//_____________________________

// convert jason into list
// decode the json data
//parseProducts() function that converts the response body into a List<Photo>.
// List<User> parseProducts(String responseBody) {
//   final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//   return parsed.map<User>((json) => User.fromMap(json)).toList();
// }

// String baseUri = "https://reqres.in/api/users?page=2";
// Future<List<User>> fetchUserDetails() async {
//   // final response = await http.get(Uri.parse(baseUri));
//   final response = await http.get(Uri.parse(baseUri));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     //return User.fromJson(jsonDecode(response.body));
//     return parseProducts(response.body);
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }
//_____________________________________________________________________________________

// Future<List<User>> getUser() async {
//   // http.Response response;
//   final response = await http.get(Uri.parse(baseUri));
//   if (response.statusCode == 200) {
//     final listResponse = json.decode(response.body);
//     // return response.map((e) => User.fromJson(e)).toList();

//     List<User> detail = [];
//   }
// }

// for (var users in listResponse) {
//   User userlist = User(
//     first_name: users["name"],
//     last_name: users["image"],
//     email: users["email"],
//     avatar: users['avatar'],
//   );

//   detail.add(userlist);
//     }
//     debugPrint(detail.toString());
//     // return detail;
//   } else {
//     throw Exception("Unable to fetch data");
//   }
// }
//_____________________________________________________________________

// late String stringResponse;
// late Map mapResponse; // only show value
// late Map dataResponse;
// late List listResponse;
//_________________________________________________________

// String baseUri = "https://reqres.in/api/users?page=2";
// apicall(String userdata) async {
//   // http.Response response;
//   var response = await http.get(Uri.parse(baseUri + userdata));
//   if (response.statusCode == 200) {
//     var jsondata = json.decode(response.body);
//     // check request is success or not
//     // Map<String,dynamic> jsondata
//     // var jsondata = new Map<String, dynamic>.from(json.decode(response.body));

//     List<User> detail = [];

//     for (var users in jsondata) {
//       // if ( users is jsondata) {
//       User userlist = User(
//         id: users['id'],
//         first_name: users["first_name"].toString(),
//         last_name: users["last_name"].toString(),
//         email: users["email"].toString(),
//         avatar: users['avatar'].toString(),
//       );

      

//       detail.add(userlist);
//     }
//     //debugPrint(detail.toString());
//     return detail;
//   } else {
//     // not sucess
//     throw Exception("Unable to fetch data");
//   }
//   // setState(() {
//   //   stringResponse = response.body;
//   //   mapResponse = json.decode(response.body);
//   //   //dataResponse = mapResponse["data"]; // show details of data
//   //   listResponse = mapResponse["data"];
//   // });
// }
//   // final response = await http.get(Uri.parse(""));

// @override
// void initState() {
//   apicall();
//   super.initState();
// }
