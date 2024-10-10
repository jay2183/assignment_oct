import 'package:assignment_oct/app/core/constants/colors.dart';
import 'package:assignment_oct/app/core/constants/text_style.dart';
import 'package:assignment_oct/app/presentation/splash/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
 final c = Get.put(SplashSController());

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colorconst.c6772f2,
      body: Center(child: Text("Welcome",style: applyFontStyle(),),),
    );
  }
}