
import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class CElevatedButtonTheme {
  CElevatedButtonTheme._();

//? ----------- light Elevated Button Theme
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
      
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CColors.whiteColor,
      backgroundColor: CColors.primaryColor,
      disabledBackgroundColor: CColors.greyColor,
      disabledForegroundColor: CColors.greyColor,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: CColors.whiteColor, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

}