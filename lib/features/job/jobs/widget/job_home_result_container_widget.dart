
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/circular_container.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobHomeResultContainerWidget extends StatelessWidget {
  const JobHomeResultContainerWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: Stack(
        children: [
          CRoundedContainer(
            backgroundColor: CColors.secondaryColor,
            // height: height * .08,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Iconsax.search_favorite,
                    color: CColors.whiteColor,
                  ),
                  const SizedBox(height: CSizes.sm),
                  Text(
                    '15 Jobs Available', 
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: CColors.whiteColor),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -100,
            right: -300,
            child: CCircularContainer(
              height: height * .5,
              backgroundColor:
                  CColors.textWhiteColor.withOpacity(0.2),
            ),
          ),
          Positioned(
            bottom: -400,
            left: -200,
            child: CCircularContainer(
              height: height * .5,
              backgroundColor:
                  CColors.textWhiteColor.withOpacity(0.2),
            ),
          ),
          Positioned(
            top: -150,
            left: -300,
            child: CCircularContainer(
              height: height * .2,
              backgroundColor:
                  CColors.textWhiteColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
