import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:getx/Model/counterModel.dart';

// class CounterController extends GetxController {
//   CounterModel counterModel = CounterModel(count: 0);
//
//   void Increment() {
//     counterModel.count++;
//     update();
//   }
//
//   void Decrement() {
//     counterModel.count--;
//     update();
//   }
// }

// class CounterController extends GetxController {
//   RxInt count = 0.obs;
//   void Increment() {
//     count++;
//   }
//
//   void Decrement() {
//     count--;
//   }
// }

class CounterController extends GetxController {
  CounterModel counterModel = CounterModel(count: 0.obs);
  void Increment() {
    counterModel.count++;
  }

  void Decrement() {
    counterModel.count--;
  }
}
