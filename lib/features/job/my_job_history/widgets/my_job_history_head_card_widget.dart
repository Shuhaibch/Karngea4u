import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';

class CountRowImageHeadCardWidget extends StatelessWidget {
  const CountRowImageHeadCardWidget({
    super.key,
    required this.height,
    required this.title1,
    required this.title2,
    required this.subTitle1,
    required this.subTitle2,
  });

  final double height;
  final String title1, title2, subTitle1, subTitle2;
  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      height: height * .12,
      width: double.infinity,
      backgroundColor: CColors.secondaryColor,
      child: Stack(
        children: [
          CRoundedImage(
            fit: BoxFit.fill,
            height: height * .12,
            width: double.infinity,
            imageUrl: CImageString.jobNumberImage,
            backgroundColor: CColors.secondaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title1,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: CColors.whiteColor),
                  ),
                  SizedBox(height: height * .005),
                  Text(
                    subTitle1,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: CColors.whiteColor),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title2,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: CColors.whiteColor),
                  ),
                  SizedBox(height: height * .005),
                  Text(
                    subTitle2,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: CColors.whiteColor),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
