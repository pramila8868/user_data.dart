import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:user_data/mobile/model/mobile_model.dart';

import '../api/mobile_api.dart';
import 'mobile_card.dart';
import 'package:http/http.dart' as http;

import 'mobile_list.dart';

class MobileScreen extends StatefulWidget {
  //final Future<List<User>> products;
  //final Future<User> products;
  MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  bool _loading = false;
  List<dynamic> _users = [];
  @override
  // void initState() {
  //   print(fetchUserDetails());
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("User Data")),
        body: Container(
          // color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder(
              //FutureBuilder<User>(
              // await some time at that time use futurebuilde or sttreambuilder
              future:
                  fetchMobileDetails(), // products, //apicall("sports"), // fetchUser(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) print(snapshot.error);
                if (snapshot.hasData) {
                  print("snapshot of data is ${snapshot.data}");
                  return ListView.builder(
                      shrinkWrap: true,
                      // itemCount: snapshot.data, //items.length,
                      itemCount: snapshot.data.length,
                      //scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //  return //Text(" hello world");
                        //  var data = snapshot.data;
                        return MobileList(item: snapshot.data[index]);
                      });
                } else {
                  return CircularProgressIndicator();
                }
                // print("snapshot of data is ${snapshot.data}");
              }),
        ));

    // ignore: dead_code
    // Future loadUserList() async {
    //   setState(() {
    //     _loading = true;
    //   });
    //   var res =
    //       await http.get(Uri.https("https://dummyjson.com/products", "users"));
    //   if (res.statusCode == 200) {
    //     var jsonData = jsonDecode(res.body);
    //     if (jsonData['users'].isNotEmpty) {
    //       setState(() {
    //         _users = jsonData['users'];
    //         _loading = false;
    //       });
    //     }
    //   }
    //}
  }
}
