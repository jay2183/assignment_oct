import 'package:assignment_oct/app/presentation/splash/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sub_screen/galary/controller/controller.dart';

class BaseScreenController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  RxInt tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
    clearSplashMemory();
    _tabListener();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void clearSplashMemory() {
    Get.delete<SplashSController>();
  }

  _tabListener() {
    tabController.addListener(() {
      tabIndex.value = tabController.index;
      memoryManageMent(tabIndex.value);
    });
  }

  void settabIndexValue(value) {
    tabController.index = value;
    tabIndex.value = value;
  }

  void memoryManageMent(index){

     if(index == 0){
      Get.put(GalaryController());
     }
     else if(index == 1){
      Get.delete<GalaryController>();
     }
     else if(index == 2){
      Get.delete<GalaryController>();

     }
  }
}
