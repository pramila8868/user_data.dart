import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_data/Provider/Favourite/favouriteScreen.dart';
import 'package:user_data/Provider/Favourite/favourite_provider.dart';
import 'package:user_data/Provider/Theme/dark_theme.dart';
import 'package:user_data/Provider/Theme/theme_provider.dart';
import 'package:user_data/Provider/auth/auth_provider.dart';
import 'package:user_data/Provider/auth/sign.dart';
import 'package:user_data/api/example-3/screen.dart';
import 'package:user_data/post/Screen/PosrScreen.dart';
import 'package:user_data/post/Screen/main_screen.dart';
import 'package:user_data/user_data/home/home.dart';
import 'package:user_data/mobile/Screen/mobileScreen.dart';
import 'package:user_data/user_data/widgets/use_api.dart';
import 'package:user_data/user_data/widgets/user_model.dart';

import 'Provider/Screen/provider_screen.dart';
import 'Provider/provider/calculation_provider.dart';
import 'albums/Screen/album_screen.dart';
import 'apicontroller.dart/mainScreen.dart';

// ctr d-press
// ctrl k s
void main() {
  runApp(MyApp(

      // products: fetchUserDetails()
      ));
}

class MyApp extends StatelessWidget {
  // final Future<List<User>> products;
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return //ChangeNotifierProvider(create: (context) => CalculationProvider());
        MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_)=>  FavouriteScreen()),
        ChangeNotifierProvider(create: (context) => CalculationProvider()),
        ChangeNotifierProvider(create: (context) => MultiplyProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteItem()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
       ChangeNotifierProvider(create: (context) => AuthProvider()),
      
      ],
      child: Builder(// pass builder method to assign value for
          builder: (context) {
        final themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            //  themeMode: Provider.of<ThemeProvider>(context).themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.yellow,
                primaryColor: Colors.purple),
            //home: FavouriteScreen(),
            // home: const PostScreen1()
            // home: ProviderScreen(),
            //home: PostScreen()
            home: Signin()

            //  home: DarkTheme(),
            //home:
            //HomeScreen(
            //     //products: products,
            //     )
            );
      }),
    );
    //home:  UserData(products: ,));
  }
}
