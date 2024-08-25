import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerDetailsScreenAboutUsTitleSubTitleIconsColumnWidget
    extends StatelessWidget {
  const EmployerDetailsScreenAboutUsTitleSubTitleIconsColumnWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    final height = CDeviceUtils.getScreenheight(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Keep in touch:",
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(fontWeight: FontWeight.bold, color: CColors.blackColor),
        ),
        Row(
          children: [
            CircleAvatar(
              maxRadius: height * .015,
              backgroundColor: CColors.greyColor,
              child: Image(
                height: height * .015,
                width: width * .02,
                image: const AssetImage(
                  CImageString.linkedInIcons,
                ),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: CSizes.xxs),
            CircleAvatar(
              maxRadius: height * .015,
              backgroundColor: CColors.greyColor,
              child: Image(
                height: height * .015,
                width: width * .02,
                image: const AssetImage(
                  CImageString.ytIcons,
                ),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: CSizes.xxs),
            CircleAvatar(
              maxRadius: height * .015,
              backgroundColor: CColors.greyColor,
              child: Image(
                height: height * .015,
                width: width * .02,
                image: const AssetImage(
                  CImageString.fbIcons,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
      ],
    );
  }
}
