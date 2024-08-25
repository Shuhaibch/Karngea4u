import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerHeadContainerWidget extends StatelessWidget {
  const EmployerHeadContainerWidget({
    super.key,
    required this.title,
    this.subTitle = "View More",
    this.onTap,
  });
  final String title, subTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      radius: 0,
      backgroundColor: CColors.primaryColor,
      // height: height * .05,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
          vertical: CSizes.sm, horizontal: CSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: CColors.whiteColor),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              subTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: CColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
