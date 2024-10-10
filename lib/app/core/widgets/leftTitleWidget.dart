

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_style.dart';

Widget topLeftTitle({String? title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      title ?? "Title",
      textAlign: TextAlign.left,
      style: applyFontStyle(color: Colors.cyan, fontSize: 25.sp,fontweight: FontWeight.w600),
    ),
  );
}
