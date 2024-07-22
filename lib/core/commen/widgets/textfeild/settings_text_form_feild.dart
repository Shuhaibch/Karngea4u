import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class SettingsTextFeild extends StatelessWidget {
  const SettingsTextFeild({
    super.key,
    required this.width,
    this.icon,
    this.suffixIcon,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
  });

  final double width;
  final IconData? icon, suffixIcon;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: CColors.whiteColor,
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .copyWith(color: CColors.whiteColor),
      obscureText: obscureText,
      decoration: InputDecoration(
        counterStyle: const TextStyle(color: CColors.whiteColor),
        prefixIcon: Icon(
          icon,
          color: CColors.whiteColor,
          size: width * .03,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: CColors.whiteColor,
          size: width * .03,
        ),
        hintText: hintText,
        errorStyle: Theme.of(context).inputDecorationTheme.errorStyle,
        hintStyle: Theme.of(context)
            .inputDecorationTheme
            .hintStyle!
            .copyWith(color: CColors.whiteColor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CColors.secondaryColor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}
