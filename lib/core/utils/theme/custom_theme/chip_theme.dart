import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class CChipTheme {
  CChipTheme._();

  //? light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: CColors.greyColor.withOpacity(.4),
    labelStyle: const TextStyle(
      color: CColors.blackColor,
    ),
    selectedColor: CColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: CColors.whiteColor,
  );

}
