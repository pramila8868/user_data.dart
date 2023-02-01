import 'package:flutter/material.dart';
import 'package:user_data/post/api/api.dart';
import '../../test.dart';
import '../model/model.dart';

class PostScreen extends StatefulWidget {
  PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  //late Future<UserModel> _userModels;
  Future<Album>? _futureAlbum;
  final TextEditingController nameController = TextEditingController();

  final TextEditingController jobController = TextEditingController();

  // void initState() {
  //   super.initState();
  //   _userModels = new UserModels();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            // child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: 'Enter Title'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _futureAlbum = createAlbum(nameController.text);
                      //print(_futureAlbum);
                    });
                  },
                  child: const Text('Create Data'),
                ),
              ],
            ),
          ),
          FutureBuilder<Album>(
            future: _futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          )
        ],
      ),

      // body: Container(
      //     padding: EdgeInsets.all(32),
      //     child: FutureBuilder<Album>(
      //       future: _futureAlbum, //_userModels,
      //       builder: (context, abc) => Column(children: <Widget>[
      //         TextField(
      //           controller: nameController,
      //         ),
      //         // TextField(
      //         //   controller: jobController,
      //         // ),
      //         Container(
      //           color: Colors.grey,
      //           child: MaterialButton(
      //             onPressed: () async {
      //               String name = nameController.text;
      //               //   String job = jobController.text;
      //               //   UserModels data = await createUser(job, name);
      //               setState(() {
      //                 _futureAlbum = createAlbum(
      //                   nameController.text,
      //                 );
      //                 //    _userModels = data as Future<UserModel>;
      //                 // createUser();
      //                 // createUser(nameController.text);
      //                 //var future  = createUser(nameController.text);
      //               });
      //             },
      //             child: Text("Click"),
      //           ),
      //         )
      //       ]),
      //     ))
    );
  }
}

//   Column buildColumn() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         TextField(
//           controller: nameController,
//           decoration: const InputDecoration(hintText: 'Enter Title'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _futureAlbum = createAlbum(nameController.text);
//               //print(_futureAlbum);
//             });
//           },
//           child: const Text('Create Data'),
//         ),
//       ],
//     );
//   }

//   FutureBuilder<Album> buildFutureBuilder() {
//     return FutureBuilder<Album>(
//       future: _futureAlbum,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Text(snapshot.data!.title.toString());
//         } else if (snapshot.hasError) {
//           return Text('${snapshot.error}');
//         }
//         return const CircularProgressIndicator();
//       },
//     );
//   }
// }

class PostScreen1 extends StatefulWidget {
  const PostScreen1({super.key});

  @override
  State<PostScreen1> createState() => _PostScreen1State();
}

class _PostScreen1State extends State<PostScreen1> {
  Future<UserModel>? _userModels;
  //Future<Album>? _futureAlbum;
  final TextEditingController nameController = TextEditingController();

  final TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            // child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: 'Enter Title'),
                ),
                TextField(
                  controller: jobController,
                  decoration: const InputDecoration(hintText: 'Enter Title'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _userModels =
                          createUser(nameController.text, jobController.text);
                      print(_userModels);
                    });
                  },
                  child: const Text('Create Data'),
                ),
              ],
            ),
          ),
          FutureBuilder<UserModel>(
            future: _userModels,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Row(
                  children: [
                    Text(snapshot.data!.job.toString()),
                    Text(snapshot.data!.name.toString()),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
