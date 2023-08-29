import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/const/app_colors.dart';

class TextStyleManager {
  static TextStyle get headline1 {
    return TextStyle(
      fontSize: 73.sp,
      height: 87.6.h / 73.sp,
      fontWeight: FontWeight.w400,
      // color: ColorsManager.greyText,
      fontFamily: 'BebasNeue',
    );
  }

  static TextStyle get headline2 {
    return TextStyle(
      fontSize: 45.sp,
      height: 54.h / 45.sp,
      fontWeight: FontWeight.w400,
      // color: ColorsManager.text,
      fontFamily: 'BebasNeue',
    );
  }

  static TextStyle get headline3 {
    return TextStyle(
      fontSize: 36.sp,
      height: 43.h / 36.sp,
      fontWeight: FontWeight.w400,
      // color: ColorsManager.white,
      fontFamily: 'BebasNeue',
    );
  }

  static TextStyle get headline4 {
    return TextStyle(
      fontSize: 26.sp,
      height: 31.h / 26.sp,
      fontWeight: FontWeight.w400,
      // color: ColorsManager.white,
      fontFamily: 'BebasNeue',
    );
  }


  static TextStyle get body1 {
    return TextStyle(
      fontSize: 16.sp,
      height: 27.h / 16.sp,
      fontWeight: FontWeight.w400,
      // color: ColorsManager.text,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle get body2 {
    return TextStyle(
      fontSize: 14.sp,
      height: 24.h / 14.sp,
      fontWeight: FontWeight.w400,
      // color: ColorsManager.text,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle get small {
    return TextStyle(
      fontSize: 12.sp,
      height: 14.h / 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.black27text,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle get button {
    return TextStyle(
      fontSize: 14.sp,
      height: 17.h / 14.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Montserrat',
    );
  }
}
