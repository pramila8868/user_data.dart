import 'package:flutter/material.dart';
import 'package:user_data/user_data/home/home.dart';
import 'package:user_data/user_data/widgets/use_api.dart';
import 'package:user_data/user_data/widgets/user_model.dart';
import 'dart:convert';

import '../../datas/user_data.dart';
import '../home/homemodel.dart';

class CardList extends StatelessWidget {
  //final User userdetailList;
  //final UserDetail userdetail;
  //final List<User> item;
  final User item;
  const CardList({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 80,
        width: 300,
        // height: MediaQuery.of(context).size.height * 0.01.h,
        // width: MediaQuery.of(context).size.width * 0.04.w,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          // color: Colors.black,
          color: Colors.yellow,
          // ignore: prefer_const_literals_to_create_immutables
        ),
        // ignore: prefer_const_literals_to_create_immutables
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child:
                // Icon(payment[index]),
                Row(
              children: [
                // CircleAvatar(
                //   backgroundImage: AssetImage(userdetail.image),
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              item.avatar!)), // AssetImage(item.avatar!)),
                      //Image.asset(item.avatar!),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(item.firstName!),
                              SizedBox(
                                width: 10,
                              ),
                              Text(item.lastName!),
                            ],
                          ),

                          Text(item.email!),
                          // Tab(item.name)
                          //  Text(this.userdetailList)
                          // Text(first_name!)
                          // Text(data[index].toString())
                          //listResponse == null
                          //   ? Text("Data is loading")
                          //  :
                          //  Text(data. )

                          //Text(listResponse[1]["first_name"].toString())
                          // Text(widget.userdetail.name!),

                          //Text(userData[index]["name"])
                          // Text(userdetail.name),
                          // Text(userdetail.address),
                          // Text(userdetail.gmail)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
            // SizedBox(
            //   height: MediaQuery.of(context).size.height *
            //       0.01.h,
            // ),

            ),
      ),
    );
  }
}
