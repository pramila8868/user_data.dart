import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:user_data/Provider/Favourite/favourite_count.dart';
import 'package:user_data/Provider/Favourite/favourite_provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //FavouriteItem favouriteProvider = Provider.of<FavouriteItem>(context);
    return Scaffold(
      appBar: AppBar(actions: [
        InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteCount()));
            },
            child: Icon(Icons.favorite))
      ]),
      body: Container(
        height: double.infinity,
        //color: Colors.blue,
        // width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, item) =>
                  Consumer<FavouriteItem>(builder: (context, values, child) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Hello"),
                          Expanded(
                              child: InkWell(
                                  onTap: () {
                                    if (values.selectedItem.contains(item)) {
                                      values.removeitem(item);
                                    } else {
                                      values.addItem(item);
                                    }
                                  },
                                  child: Icon(values.selectedItem.contains(item)
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined)))
                        ],
                      ),
                    );
                  })),

          //  Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       Text("Hello"),
          //       Expanded(
          //           child: InkWell(
          //               onTap: () {
          //                 favouriteProvider.addItem(item);
          //               },
          //               child: Icon(favouriteProvider.selectedItem
          //                       .contains(item)
          //                   ? Icons.favorite
          //                   : Icons.favorite_border_outlined)))
          //     ],
          //   ),
          // )
          //),
        ),
      ),
    );
  }
}
