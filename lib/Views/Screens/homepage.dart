import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/counterController.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var c1 = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              c1.Increment();
            },
            child: Icon(
              Icons.plus_one,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              c1.Decrement();
            },
            child: Icon(
              Icons.exposure_minus_1,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<CounterController>(builder: (_) {
            //   return Text(
            //     "${c1.counterModel.count}",
            //     style: Theme.of(context).textTheme.displayLarge,
            //   );
            // }),
            // GetX<CounterController>(builder: (_) {
            //   return Text(
            //     "${c1.count}",
            //     style: Theme.of(context).textTheme.displayLarge,
            //   );
            // }),
            Obx(
              () => Text(
                "${c1.counterModel.count}",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
