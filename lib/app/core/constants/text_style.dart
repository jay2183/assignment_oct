import 'package:assignment_oct/app/core/constants/fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle applyFontStyle({double? fontSize,Color? color, FontWeight? fontweight,String? fontName,double? txtHeight,double?laterSpace}) {
  return TextStyle(
    letterSpacing: laterSpace,
      fontSize: fontSize??30.sp,
      color: color??Colors.white,
      fontWeight: fontweight??FontWeight.w600,
      height:txtHeight?? 1.04,
      fontFamily: fontName??GetFonts.petroSansemi);
}