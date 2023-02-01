import 'dart:convert';

import 'package:user_data/mobile/model/mobile_model.dart';
import 'package:http/http.dart' as http;

// json start with obj not in array
String baseUri = "https://dummyjson.com/products";

//______________________________________-
// List<dynamic> _users = [];
// loadUserList() async {
//   var res = await http.get(Uri.parse(
//     baseUri,
//   ));

//   if (res.statusCode == 200) {
//     var jsonData = jsonDecode(res.body);
//     //if (jsonData['users'].isNotEmpty) {
//     //_users = jsonData['users'];
//     //}
//   }
// }

// //List<Products> mobileList = [];
// late Products mobileLists;
// Future<Products> getMobileDetail() async {
//   // final response = await http.get(Uri.parse(url));
//   var response = await http.get(Uri.parse(url));
//   // var datas = jsonDecode(response.body.toString());

//   // print(datas.toString());
//   if (response.statusCode == 200) {
//     Products mobileLists = Products.fromJson(response.body);
//     return mobileLists;

//     // for (Map mobile in datas) {
//     //  mobileList.add(Products(mobile));
//     //   Products mobiledetail = Products(
//     //       id: mobile['id'],
//     //       title: mobile['title'].toString(),
//     //       description: mobile['description'],
//     //       price: mobile['price'],
//     //       discountPercentage: mobile['discountPercentage'],
//     //       rating: mobile['rating'],
//     //       stock: mobile['stock'],
//     //       brand: mobile['brand'],
//     //       category: mobile['category'],
//     //       thumbnail: mobile['thumbnail'],
//     //       images: mobile['images']);
//   }
//   // mobileList.add(mobilede)
//   //return mobileList;
//   // }
// }

//late Products mobileList;
List<Products> userList =
    []; // needed WHEN  we donot have array name IN MODEL OF URL
Future<List<Products>> fetchMobileDetails() async {
  final response = await http.get(Uri.parse(baseUri));
  var datas = json.decode(response.body.toString());

  var finalList = datas['products']; // extra

  // print(datas.toString());

  // all data are comes in datas
  if (response.statusCode == 200) {
    for (var products in finalList) {
      userList.add(Products.fromJson(products));
    }

    print("userlist is $userList ");
    return userList;
  } else {
    throw Exception('Failed to load album');
  }
  // Products mobileList = json.decode(response.body);

  //userList.clear();
  // If the server did return a 200 OK response,
  // for (Map user in datas) {
  //   Products usersdetail = Products(
  //       id: user['id'],
  //       title: user['title'].toString(),
  //       description: user['description'],
  //       price: user['price'],
  //       discountPercentage: user['discountPercentage'],
  //       rating: user['rating'],
  //       stock: user['stock'],
  //       brand: user['brand'],
  //       category: user['category'],
  //       thumbnail: user['thumbnail'],
  //       images: user['images']);
  //   //   id: user['id'],
  //   //   firstName: user["first_name"].toString(),
  //   //   lastName: user["last_name"].toString(),
  //   //   email: user["email"].toString(),
  //   //   avatar: user['avatar'].toString(),
  //   // );
  //   userList.add(usersdetail);
  //userList.add(User.fromJson(user));
}
//}
