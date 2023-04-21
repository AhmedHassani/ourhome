import 'package:get/get.dart';

class Dimensions extends GetxController {
  var w = 0.0.obs;
  var h = 0.0.obs;



  double fontSize1() {
    return Get.size.shortestSide / 25;
  }

  double fontSize2() {
    return Get.size.shortestSide / 38;
  }

  double fontSize3() {
    return Get.size.shortestSide / 45;
  }

  double containerH1() {
    h.value = Get.height * 0.25;
    return h.value;
  }

  double containerW1() {
    w.value = Get.width * 0.30;
    return w.value;
  }
}
