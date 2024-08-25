import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class LanguageTileWidget extends StatelessWidget {
  const LanguageTileWidget({
    super.key,
    required this.image,
    required this.title,
    required this.isSelected,
  });
  final String image, title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CRoundedImage(
              imageUrl: image,
              width: width * .03,
            ),
            const SizedBox(width: CSizes.spaceBtwSection),
            Text(
              title,
              style: const TextStyle(color: CColors.blackColor),
            )
          ],
        ),
        isSelected
            ? const Icon(
                Icons.check,
                color: CColors.primaryColor,
              )
            : const SizedBox(),
      ],
    );
  }
}
