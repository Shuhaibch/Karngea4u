
import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class ResumeHeadImageContainerWidget extends StatelessWidget {
  const ResumeHeadImageContainerWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      borderColor: CColors.primaryColor,
      padding: const EdgeInsets.all(CSizes.sm),
      showBorder: true,
      child: Row(
        children: [
          CRoundedImage(
            borderRadius: 100,
            imageUrl: CImageString.blogCardImage,
            applyImageRadius: true,
            fit: BoxFit.fill,
            backgroundColor: CColors.warningColor,
            width: width * .09,
            height: height * .09,
          ),
          const SizedBox(width: CSizes.spaceBtwInputFeild),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Som Sreymom",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: CColors.primaryColor),
              ),
              Text(
                "010 55 32 89",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: CColors.secondaryColor),
              ),
              Text(
                "sreymomsom19@gmail.com",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: CColors.secondaryColor),
              ),
              Text(
                "Roteang Phum Thom Kiensvay Kandal ",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: CColors.secondaryColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
