import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CSearchContainer extends StatelessWidget {
  const CSearchContainer({
    super.key,
    required this.text,
    this.isBlogScreen = false,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace), required this.controller,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder, isBlogScreen;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
            width: CDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: CSizes.md),
            decoration: BoxDecoration(
                color: showBackground ? CColors.whiteColor : Colors.transparent,
                borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
                border: showBorder
                    ? Border.all(
                        color: isBlogScreen
                            ? CColors.primaryColor
                            : CColors.greyColor,
                        width: isBlogScreen ? 2 : 1)
                    : null),
            child: TextFormField(
              autofocus: false,
              cursorColor: CColors.primaryColor,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 15),
                  prefixIcon: Icon(icon, color: CColors.primaryColor),
                  hintText: text,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none),
            )),
      ),
    );
  }
}
