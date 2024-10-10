import 'package:assignment_oct/app/core/constants/colors.dart';
import 'package:assignment_oct/app/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controller/controller.dart';
import '../sub_screen/galary/view/view.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({super.key});


  final List<IconData> tabeIconList = [
    Icons.photo,
    Icons.home_outlined,
    Icons.person_outline,
  ];
  final List<String> tabName = [
    "Galary",
    "Home",
    "Profile",
  ];

  final _controller = Get.put(BaseScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          TabBarView(
            controller: _controller.tabController,
            children: [
              GalaryScreen(),
              Center(
                  child: Text("Home",
                      style: applyFontStyle(color: Colors.cyanAccent))),
              Center(
                  child: Text("Profile",
                      style: applyFontStyle(color: Colors.cyan))),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              child: Obx(
                () => Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colorconst.c6772f2,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.r),
                              bottomRight: Radius.circular(30.r))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              tabeIconList.length, (index) {
                            int sIndex = _controller.tabIndex.value;
                            IconData tabIcon = tabeIconList[index];
                            String tabNa = tabName[index];
                            return GestureDetector(
                              onTap: () {
                                
                               _controller.settabIndexValue(index);
                              },
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Icon(
                                      tabIcon,
                                      size: 25.sp,
                                      color: sIndex == index
                                          ? Colors.cyanAccent
                                          : Colors.amberAccent,
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      tabNa,
                                      style: applyFontStyle(
                                          laterSpace: 2,
                                          fontSize: 15.sp,
                                          color: sIndex == index
                                              ? Colors.cyanAccent
                                              : Colors.amberAccent,
                                          fontweight: sIndex == index
                                              ? FontWeight.w500
                                              : FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
