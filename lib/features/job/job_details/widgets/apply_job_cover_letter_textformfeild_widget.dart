import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class ApplyJobCoverLetterTextFormFeildWidget extends StatelessWidget {
  const ApplyJobCoverLetterTextFormFeildWidget({
    super.key,
    required this.controller,
    this.validator,
  });
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      maxLines: null,
      cursorColor: CColors.blackColor,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: CColors.blackColor),
      decoration: InputDecoration(
        isDense: true,
        counterStyle: const TextStyle(color: CColors.blackColor),
        hintText: "Cover Letter",
        errorStyle: Theme.of(context).inputDecorationTheme.errorStyle,
        hintStyle: Theme.of(context)
            .inputDecorationTheme
            .hintStyle!
            .copyWith(color: CColors.darkerGreyColor),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.darkGreyColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: CColors.darkGreyColor),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    );
  }
}
