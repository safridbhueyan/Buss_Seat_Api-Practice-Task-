// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
    filled: true,
    fillColor: Colors.transparent,
    hintStyle: GoogleFonts.roboto(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff4E5D7899).withValues(alpha: .8),
    ),
    labelStyle: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff777980),
    ),
    prefixIconColor: Color(0xff4E5D78),
    suffixIconColor: Color(0xffffffff),
    errorStyle: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: Color(0xff4e5d7833).withValues(alpha: .25)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: Color(0xff4e5d7833).withValues(alpha: .25)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: Color(0xff4e5d7833).withValues(alpha: .25)),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: Color(0xff4e5d7833).withValues(alpha: .25)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: Color(0xff4e5d7833).withValues(alpha: .25)),
    ),
  );
}
