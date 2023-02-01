import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/calculation_provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // CalculationProvider calculationProvider =
    //     Provider.of<CalculationProvider>(context, listen: false);
    // MultiplyProvider multyProvider =
    //     Provider.of<MultiplyProvider>(context, listen: false);

    // //1st way// MultiplyProvider provider = Provider.of<MultiplyProvider>(context);
    return
        // MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(create: (context) => CalculationProvider()),
        //     ChangeNotifierProvider(create: (context) => MultiplyProvider())
        //     // MultiplyProvider(create:(context)=> MultiplyProvider());
        //   ],
        //   child:
        Scaffold(
            body: Column(
      children: [
        Consumer<CalculationProvider>(
          builder: (BuildContext context, calculationprovider, Widget? child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(calculationprovider.number.toString()))),
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
                            calculationprovider.increment();
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
                          calculationprovider.decrement();
                        },
                        child: Text("Decrease"),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        Consumer<MultiplyProvider>(
            builder: (BuildContext context, multiplies, Widget? child) {
          return Column(
            children: [
              Text(multiplies.n.toString()),
              Container(
                color: Colors.yellow,
                child: MaterialButton(
                  onPressed: () {
                    //  multyProvider.multiply();
                    multiplies.multiply();
                  },
                  child: Text("Multiply"),
                ),
              ),
            ],
          );
        }),
      ],
    ));
  }
}
