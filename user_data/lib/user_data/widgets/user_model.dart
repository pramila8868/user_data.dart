import 'package:http/http.dart' as http;

class User {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}

// class User {
//   final int? id;
//   final String? email;
//   final String? first_name;
//   final String? last_name;
//   final String? avatar;

//   User({
//     this.id,
//     this.email,
//     this.first_name,
//     this.last_name,
//     this.avatar,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'] as int,
//       avatar: json['avatar'] as String,
//       email: json["email"] as String,
//       first_name: json["first_name"] as String,
//       last_name: json["last_name"] as String,
//     );
//   }
//   factory User.fromMap(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       avatar: json['avatar'],
//       email: json["email"],
//       first_name: json["first_name"],
//       last_name: json["last_name"],
//     );
//   }


//   // factory User.fromJson(Map<String, dynamic> json) {
//   //   return User(
//   //      json['id'],
//   //      json['avatar'],
//   //  json["email"],
//   //      json["first_name"],
//   //      json["last_name"],
//   //   );
//   // }

  

//   // static List<User> fromJsonList(dynamic jsonList) {
//   //   final userList = <User>[];
//   //   if (jsonList == null) return userList;

//   //   if (jsonList is List<dynamic>) {
//   //     for (final json in jsonList) {
//   //       userList.add(
//   //         User.fromJson(json),
//   //       );
//   //     }
//   //   }

//   //   return userList;
//   // }
// }
