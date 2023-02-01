import 'package:flutter/material.dart';
import 'package:user_data/mobile/model/mobile_model.dart';

class MobileList extends StatelessWidget {
  //final User userdetailList;
  //final UserDetail userdetail;
  //final List<User> item;
  final Products item;
  const MobileList({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 200,
        // width: 300,
        // height: MediaQuery.of(context).size.height * 0.01.h,
        // width: MediaQuery.of(context).size.width * 0.04.w,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          // color: Colors.black,
          color: Colors.yellow,
          // ignore: prefer_const_literals_to_create_immutables
        ),
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(
          children: [
            // CircleAvatar(
            //   backgroundImage: AssetImage(userdetail.image),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(item.description.toString()),
                  Row(
                    children: [
                      Text(item.discountPercentage.toString()),
                      Text(item.price.toString()),
                      Text(item.price.toString()),
                      Text(item.category.toString()),
                    ],
                  ),

                    // Text(item.images.toString()),
                    Image.network(item.images.toString()),
                  SizedBox(
                    width: 10,
                  ),
                  Text(item.category.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
