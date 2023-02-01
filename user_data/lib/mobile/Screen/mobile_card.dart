import 'package:flutter/material.dart';
import 'package:user_data/mobile/model/mobile_model.dart';

import 'mobile_list.dart';

class MobileCard extends StatelessWidget {
  // final List<Products> items;
  final Products items;
  const MobileCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        // itemCount: //items.length,
        itemCount: items.toString().length,
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //  return //Text(" hello world");
          //  var data = snapshot.data;
          return MobileList(item: items);
        });
  }
}
