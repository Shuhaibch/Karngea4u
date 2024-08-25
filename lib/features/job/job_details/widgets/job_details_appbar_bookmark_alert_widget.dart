

import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobDetailsAppBarBookMarkAlertWidget extends StatelessWidget {
  const JobDetailsAppBarBookMarkAlertWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CColors.whiteColor,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              HexagonWidget.pointy(
                height: height * .06,
                width: width * .06,
                child: Image(
                  height: height * .07,
                  width: width * .08,
                  image: const AssetImage(
                    CImageString.jobImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: CSizes.spaceBtwItem),
              Text('Full Stack Developer',
                  style:
                      Theme.of(context).textTheme.headlineSmall!),
            ],
          ),
          const SizedBox(height: CSizes.spaceBtwItem),
          Text('Added to Your Favorite Successfully!',
              style: Theme.of(context).textTheme.titleMedium!),
        ],
      ),
    );
  }
}
