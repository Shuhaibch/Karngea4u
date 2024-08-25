import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class CVTextFormFeild extends StatelessWidget {
  const CVTextFormFeild({
    this.obscureText = false,
    super.key,
    this.onTap,
    this.icon,
    this.suffixIcon,
    this.maxLine = 1,
    this.isReadOnly = false,
    required this.controller,
    required this.hintText,
    this.borderColor = CColors.darkerGreyColor,
    this.keyboardType,
  });
  final IconData? icon;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText, isReadOnly;
  final Color borderColor;
  final Widget? suffixIcon;
  final int? maxLine;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      maxLines: maxLine,
      controller: controller,
      readOnly: isReadOnly,
      onTap: onTap,
      cursorColor: CColors.primaryColor,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: CColors.darkGreyColor),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(
            icon,
            color: CColors.primaryColor,
          ),
          enabledBorder: Theme.of(context)
              .inputDecorationTheme
              .enabledBorder!
              .copyWith(borderSide: BorderSide(color: borderColor)),
          focusedBorder: Theme.of(context)
              .inputDecorationTheme
              .focusedBorder!
              .copyWith(borderSide: BorderSide(color: borderColor)),
          border: Theme.of(context)
              .inputDecorationTheme
              .border!
              .copyWith(borderSide: BorderSide(color: borderColor))),
    );
  }
}
