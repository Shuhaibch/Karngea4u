import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class AuthTextFormFeild extends StatelessWidget {
  const AuthTextFormFeild({
    this.obscureText = false,
    super.key,
    this.onTap,
    this.icon,
    this.suffixIcon,
    required this.controller,
    required this.hintText,
    this.validator,
  });
  final IconData? icon, suffixIcon;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: CColors.primaryColor,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: CColors.primaryColor,
        ),
        suffixIcon: InkWell(
          onTap: onTap,
          child: Icon(
            suffixIcon,
            color: CColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
