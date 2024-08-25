import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class CTextTheme {
  CTextTheme._();
  //?-------- Light Theme --------------
  static TextTheme lightTextTheme = TextTheme(
    //* headline
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: CColors.primaryColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: CColors.primaryColor),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: CColors.primaryColor),

    //* displat
    displayLarge: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: CColors.primaryColor),
    displayMedium: const TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.w600, color: CColors.primaryColor),
    displaySmall: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: CColors.primaryColor),

    //* title
    titleLarge: const TextStyle().copyWith(
        fontSize: 17, fontWeight: FontWeight.w600, color: CColors.primaryColor),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: CColors.primaryColor),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: CColors.primaryColor),

    //* body
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CColors.primaryColor),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: CColors.primaryColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: CColors.primaryColor.withOpacity(0.5)),

    //* label
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: CColors.primaryColor),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );
}
