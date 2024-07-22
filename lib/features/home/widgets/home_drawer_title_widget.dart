import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class HomeDrawerTileWidget extends StatelessWidget {
  const HomeDrawerTileWidget({
    super.key,
    this.onTap,
    required this.width,
    required this.icon,
    required this.title,
  });

  final double width;
  final void Function()? onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          const Divider(color: CColors.secondaryColor),
          Padding(
            padding: const EdgeInsets.only(
                right: CSizes.sm,
                left: CSizes.md,
                top: CSizes.sm,
                bottom: CSizes.sm),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: width * .025,
                  color: CColors.whiteColor,
                ),
                const SizedBox(
                  width: CSizes.lg,
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: CColors.whiteColor),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: CColors.whiteColor,
                  size: width * .02,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
