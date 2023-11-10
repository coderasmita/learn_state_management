import 'package:get/get.dart';

class IncrementController extends GetxController {
  var b = 20.obs;

  void increment() {
    b++;
  }

  void decrement() {
    b--;
  }
}
