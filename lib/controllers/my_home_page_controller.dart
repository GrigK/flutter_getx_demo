import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  var count = 0.obs;

  increment() => count.value++;

  decrement() => count.value--;
}
