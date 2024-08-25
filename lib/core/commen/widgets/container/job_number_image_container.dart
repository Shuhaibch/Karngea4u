import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';

class JobNumberImageHeadCardWidget extends StatelessWidget {
  const JobNumberImageHeadCardWidget({
    super.key,
    required this.height,
    required this.title,
    required this.subTitle,
  });

  final double height;
  final String title, subTitle;
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
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: CColors.whiteColor),
                ),
                SizedBox(height: height * .005),
                Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: CColors.whiteColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
