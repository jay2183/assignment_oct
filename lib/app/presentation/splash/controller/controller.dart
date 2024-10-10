import 'dart:async';

import 'package:assignment_oct/app/presentation/bottom_nav/view/view.dart';
import 'package:get/get.dart';

class SplashSController extends GetxController {
  void splashEngine() {
    Timer(Duration(seconds: 4.toInt()), () async {
      await Get.off(() => BaseScreen());
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splashEngine();
  }
}
