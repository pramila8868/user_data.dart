import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:user_data/apicontroller.dart/apicontroller.dart';

class MainScreen extends StatelessWidget {
  Controller _controller = Get.put(Controller());
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              _controller.loadData();
            },
            child: Text("Hello"))
      ]),
    );
  }
}
