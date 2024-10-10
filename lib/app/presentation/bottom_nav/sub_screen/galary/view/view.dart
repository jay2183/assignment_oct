import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/leftTitleWidget.dart';

class GalaryScreen extends StatelessWidget {
  const GalaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(children: [
          SizedBox(height: 30.h,),
          topLeftTitle(title: "Galary"),
        
        ],),
      ),
    );
  }
}