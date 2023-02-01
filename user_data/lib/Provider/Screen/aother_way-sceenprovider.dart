import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../provider/calculation_provider.dart';

class AnotherProviderScreen extends StatelessWidget {
  AnotherProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CalculationProvider _provider =
        Provider.of<CalculationProvider>(context, listen: true);
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: Text(_provider.number.toString()))),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                color: Colors.yellow,
                child: MaterialButton(
                  onPressed: () {
                    _provider.increment();
                    //calculationprovider.increment();
                  },
                  child: Text("Increase"),
                )),
            SizedBox(
              width: 10,
            ),
            Container(
              color: Colors.yellow,
              child: MaterialButton(
                onPressed: () {
                  _provider.decrement();
                },
                child: Text("Decrease"),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
