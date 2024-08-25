
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class NotificationJobCardWidget extends StatelessWidget {
  const NotificationJobCardWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      elevation: 15,
      borderColor: CColors.blackColor,
      backgroundColor: CColors.primaryColor,
      padding:
          const EdgeInsets.symmetric(horizontal: CSizes.sm, vertical: CSizes.md),
      outterPadding: const EdgeInsets.all(CSizes.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Iconsax.notification,
                color: CColors.whiteColor,
              ),
              const SizedBox(width: CSizes.sm),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Flutter Developer',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: CColors.whiteColor),
                  ),
                  Text(
                    '24-Nov-2023',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: CColors.whiteColor),
                  ),
                  const SizedBox(height: CSizes.sm),
                  Text(
                    'Salary \$550 - \$1000',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: CColors.whiteColor),
                  ),
                ],
              )
            ],
          ),
          CRoundedImage(
            imageUrl: CImageString.jobImage,
            width: width * .05,
          )
        ],
      ),
    );
  }
}
