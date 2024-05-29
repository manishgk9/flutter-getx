import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  increament() {
    count++;
  }

  decreament() {
    count--;
  }
}

class MyController2 extends GetxController {
  var count = 0;
  increament() {
    count++;
    update();
  }

  decreament() {
    count--;
    update();
  }
}

// event call or variable changes found then workers work