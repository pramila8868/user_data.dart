import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:user_data/Provider/Theme/theme_provider.dart';

class DarkTheme extends StatelessWidget {
  const DarkTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(children: [
        RadioListTile<ThemeMode>(
            // ThemeMode is system, light,dark
            title: Text("Light Mode"),
            value: ThemeMode.light,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme),
        RadioListTile<ThemeMode>(
            // ThemeMode is system, light,dark
            value: ThemeMode.dark,
            title: Text("Dark Theme"),
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme),
        RadioListTile<ThemeMode>(
            // ThemeMode is system, light,dark
            value: ThemeMode.system,
            title: Text("System"),
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme),
      ]),
    );
  }
}
