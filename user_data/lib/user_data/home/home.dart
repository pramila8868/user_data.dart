import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:user_data/user_data/home/homemodel.dart';
import 'package:user_data/user_data/widgets/user_card.dart';
import 'package:user_data/user_data/widgets/user_model.dart';

import '../../datas/user_data.dart';
import '../widgets/use_api.dart';
import '../widgets/user_cardList.dart';

//FutureBuilder- if any response is comes then show
// listitem==null? 0;Listitem.length,
class HomeScreen extends StatefulWidget {
  //final Future<List<User>> products;
  //final Future<User> products;
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder //<List<User>>
              (
                  //FutureBuilder<User>(
                  // await some time at that time use futurebuilde or sttreambuilder
                  future:
                      fetchUserDetails(), // products, //apicall("sports"), // fetchUser(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) print(snapshot.error);
                    if (snapshot.hasData) {
                      return UserCard(items: snapshot.data);
                    } else {
                      return CircularProgressIndicator();
                    }
                    print("snapshot of data is ${snapshot.data}");
                  }

                  // })

                  //AsyncSnapshot snapshot)
                  //  {
                  // if (snapshot.hasData) {
                  //   List<User> appUsers = snapshot.data;

                  //   return ListView.builder(
                  //       itemCount: appUsers.length,
                  //       itemBuilder: ((context, index) {
                  //         return Text(" hello");
                  //       }));
                  // print("snapshot of data is ${snapshot.data}");

                  // return UserCard(items: appUsers);
                  //   } else {
                  //     return CircularProgressIndicator();
                  //   }
                  // }

                  // return ListView.builder(
                  //     shrinkWrap: true,
                  //     itemCount: snapshot.data.length,
                  //     //scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       //  var data = snapshot.data;
                  //       return UserCard(); //UserCard(
                  //       //   Text(snapshot.data![index].last_name.toString());
                  //       // first_name: data[index].,
                  //       // userdetail: UserDetail(
                  //       //   // address: detail[index].address,
                  //       //   // gmail: detail[index].gmail,
                  //       //   image: detail[index].image,
                  //       //   name: userData[index].toString(),
                  //       // ),
                  //       // );
                  //     });

                  //  return CircularProgressIndicator();

                  ),
        ));
  }
}
