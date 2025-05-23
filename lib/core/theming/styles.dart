import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_manager/core/theming/colors.dart';

class MyTextStyle {
  static TextStyle font16SemiBold(BuildContext context) {
    return TextStyle(
        fontSize: 16.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: MyColors.myBlack);
  }

  static TextStyle font16Regular(BuildContext context, [Color? textColor]) {
    return TextStyle(
        fontSize: 16.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: textColor?? MyColors.myBlack);
  }

  static TextStyle font14Regular(BuildContext context, [Color? textColor]) {
    return TextStyle(
        fontSize: 14.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: textColor ?? MyColors.myBlack);
  }
  static TextStyle font14Bold(BuildContext context, [Color? textColor]) {
    return TextStyle(
        fontSize: 14.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color: textColor ?? MyColors.myBlack);
  }

  static TextStyle font12Regular(BuildContext context, Color? textColor) {
    return TextStyle(
        fontSize: 12.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: textColor ?? MyColors.myBlack);
  }

  static TextStyle font12RegularGrey(BuildContext context) {
    return TextStyle(
        fontSize: 12.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: MyColors.myGray);
  }

  static TextStyle font24Bold(BuildContext context, [Color?color] ) {
    return TextStyle(
        fontSize: 24.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color:color?? MyColors.myBlack);
  }

  static TextStyle font18Bold(BuildContext context, [Color? color]) {
    return TextStyle(
        fontSize: 18.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color: color??MyColors.myBlack);
  }

  static TextStyle font20Bold(BuildContext context ,[Color? color]) {
    return TextStyle(
        fontSize: 20.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color: color??MyColors.myBlack);
  }

  static font11SemiBold(BuildContext context, [Color? color]) {
    return TextStyle(
      fontSize: 11.sp,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      color: color ?? MyColors.myBlack,
    );
  }

  static font14SemiBold(BuildContext context, [Color? color]) {
    return TextStyle(
      fontSize: 14.sp,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      color: color ?? MyColors.myBlack,
    );
  }

  static font32Bold(BuildContext context, [Color? color]) {
    return TextStyle(
        fontSize: 32.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color:color?? MyColors.myBlack);
  }

  static font16Bold(BuildContext context, [Color? color]) {
    return TextStyle(
        fontSize: 20.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color: color?? MyColors.myBlack);
  }
}
