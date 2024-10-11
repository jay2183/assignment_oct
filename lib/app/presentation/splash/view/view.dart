import 'package:assignment_oct/app/core/constants/colors.dart';
import 'package:assignment_oct/app/core/constants/images.dart';
import 'package:assignment_oct/app/core/constants/text_style.dart';

import 'package:assignment_oct/app/presentation/splash/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final c = Get.put(SplashSController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconst.c6772f2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 80.h,
                width: 80.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 1.w),
                    borderRadius: BorderRadius.circular(50.r)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.r),
                    child: Imageconst.setImage(
                        imageName: Imageconst.appIcon, fit: BoxFit.cover))),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Welcome",
              style: applyFontStyle(laterSpace: 2.w,fontSize: 30.sp),
            ),
          ],
        ),
      ),
    );
  }
}
