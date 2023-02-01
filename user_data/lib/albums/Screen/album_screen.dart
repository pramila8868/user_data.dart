import 'package:flutter/material.dart';
import 'package:user_data/Sample/api/sample_api.dart';
import 'package:user_data/albums/api/album_api.dart';

import '../Widget/card.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // color: Colors.blue,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder(
          //FutureBuilder<User>(
          // await some time at that time use futurebuilde or sttreambuilder
          future:
              fetchAlbum(), // products, //apicall("sports"), // fetchUser(),
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
                    return AlbumCard(albumsitem: snapshot.data[index]);
                  });
            } else {
              return CircularProgressIndicator();
            }
            // print("snapshot of data is ${snapshot.data}");
          }),
    ));
  }
}
