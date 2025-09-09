import 'package:buss_seat_ui/core/theme/part/app_bar_theme.dart';
import 'package:buss_seat_ui/core/theme/part/date_picker_theme.dart';
import 'package:buss_seat_ui/core/theme/part/elevated_button_theme.dart';
import 'package:buss_seat_ui/core/theme/part/input_decoration_theme.dart';
import 'package:buss_seat_ui/core/theme/part/time_picker_theme.dart';
import 'package:buss_seat_ui/core/theme/theme_extension/app_colors.dart';
import 'package:buss_seat_ui/core/theme/theme_extension/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppEvaluatedButtonThemes.evaluatedButtonTheme,
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: AppColors.darkColorScheme,
    timePickerTheme: CustomTimePickerTheme.timePickerTheme,
    datePickerTheme: CustomDatePickerTheme.datePickerTheme,
  );
  static ThemeData darkTheme = ThemeData(
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,

    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppEvaluatedButtonThemes.evaluatedButtonTheme,
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: AppColors.darkColorScheme,
    timePickerTheme: CustomTimePickerTheme.timePickerTheme,
    datePickerTheme: CustomDatePickerTheme.datePickerTheme,
  );
}
