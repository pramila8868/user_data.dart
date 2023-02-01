import 'package:flutter/material.dart';

// class DetailModel {
//   int? id;
//   String text;
//   Icon icon;

//   DetailModel({
//     this.id,
//     required this.text,
//     required this.icon,
//   });
// }

// List<DetailModel> detail = [
//   DetailModel(
//     id: 0,
//     text: "Exchange Rates ", icon: Icon(Icons.currency_rupee_sharp),
//     //icon: Icon(Icons.ad)
//   ),
//   DetailModel(
//     id: 1,
//     text: "Customer Care", icon: Icon(Icons.person),
//     //icon: Icon(Icons.ad)
//   ),

//   //icon: Icon(Icons.ad)
// ];

class UserDetail {
  int? id;
  late String? name;
  late String? gmail;
  late String? address;
  late String? image;

  UserDetail(
      {this.id,
      this.address,
      this.gmail,
      required this.image,
      required this.name});
}

List<UserDetail> detail = [
  UserDetail(
      id: 0,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/images.jpeg",
      name: "Bibek Acharya"),
  UserDetail(
      id: 1,
      address: "pokhara",
      gmail: "ae@gmail.com",
      image: "images/download.jpeg",
      name: "BRam Acharya"),
  UserDetail(
      id: 2,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download (3).jpeg",
      name: "Sita "),
  UserDetail(
      id: 3,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download.jpeg",
      name: "Bibek Acharya"),
  UserDetail(
      id: 4,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download.jpeg",
      name: "Biban"),
  UserDetail(
      id: 5,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download (3).jpeg",
      name: "Sita"),
  UserDetail(
      id: 6,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download (3).jpeg",
      name: "Ram"),
  UserDetail(
      id: 7,
      address: "pokhara",
      gmail: "p@gmail.com",
      image: "images/download.jpeg",
      name: "Bibek Acharya"),
  UserDetail(
      id: 8,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download.jpeg",
      name: "Bibek "),
  UserDetail(
      id: 9,
      address: "pokhara",
      gmail: "ap@gmail.com",
      image: "images/download (3).jpeg",
      name: "Bibek Acharya"),
  UserDetail(
      id: 10,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download (3).jpeg",
      name: " Acharya"),
  UserDetail(
      id: 11,
      address: "pokhara",
      gmail: "pa@gmail.com",
      image: "images/download (3).jpeg",
      name: "Anita"),
  UserDetail(
      id: 12,
      address: "pokhara",
      gmail: "ap@gmail.com",
      image: "images/download (3).jpeg",
      name: "Sita"),
  UserDetail(
      id: 13,
      address: "pokhara",
      gmail: "fa@gmail.com",
      image: "images/download (3).jpeg",
      name: "Pramila"),
  UserDetail(
      id: 14,
      address: "pokhara",
      gmail: "faa@gmail.com",
      image: "images/download (3).jpeg",
      name: "Hari"),
  UserDetail(
      id: 15,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download (3).jpeg",
      name: "Ram"),
  UserDetail(
      id: 16,
      address: "pokhara",
      gmail: "a@gmail.com",
      image: "images/download (3).jpeg",
      name: "Sushma"),
  UserDetail(
      id: 17,
      address: "pokhara",
      gmail: "vga@gmail.com",
      image: "images/download (3).jpeg",
      name: "Sita"),
  UserDetail(
      id: 18,
      address: "pokhara",
      gmail: "da@gmail.com",
      image: "images/download (3).jpeg",
      name: "pramila"),
  UserDetail(
      id: 19,
      address: "pokhara",
      gmail: "cda@gmail.com",
      image: "images/download (3).jpeg",
      name: "Bibek "),
  UserDetail(
      id: 20,
      address: "pokhara",
      gmail: "da@gmail.com",
      image: "images/download (3).jpeg",
      name: "pramila"),
];
