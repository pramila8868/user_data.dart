import 'package:flutter/material.dart';
import 'package:user_data/albums/module/module.dart';

class AlbumCard extends StatelessWidget {
  AlbumCard({super.key, required this.albumsitem});
  final Album albumsitem;
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
          color: Colors.grey,
          // ignore: prefer_const_literals_to_create_immutables
        ),
        // ignore: prefer_const_literals_to_create_immutables
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child:
                // Icon(payment[index]),
                Column(
              children: [
                // CircleAvatar(
                //   backgroundImage: AssetImage(userdetail.image),
                // ),
                Text(albumsitem.userId.toString()),
                Text(albumsitem.id.toString()),
                Text(albumsitem.title.toString()),
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
