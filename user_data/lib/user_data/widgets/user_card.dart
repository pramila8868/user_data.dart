import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:user_data/user_data/widgets/user_cardList.dart';
import 'package:user_data/user_data/widgets/user_model.dart';

class UserCard extends StatelessWidget {
  final List<User> items;
  const UserCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        // itemCount: snapshot.data.length,
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //  return //Text(" hello world");
          //  var data = snapshot.data;
          return CardList(item: items[index]);

          //UserCard(
          //   Text(snapshot.data![index].last_name.toString());
          // first_name: data[index].,
          // userdetail: UserDetail(
          //   // address: detail[index].address,
          //   // gmail: detail[index].gmail,
          //   image: detail[index].image,
          //   name: userData[index].toString(),
          // ),
          // );
        });
  }
}
