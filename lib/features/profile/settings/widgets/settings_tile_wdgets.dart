import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class SettingsTileWdgets extends StatelessWidget {
  const SettingsTileWdgets({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
        child: Column(
          children: [
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
                    color: CColors.primaryColor,
                  ),
                  const SizedBox(
                    width: CSizes.lg,
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: CColors.primaryColor),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: CColors.primaryColor,
                    size: width * .02,
                  )
                ],
              ),
            ),
            const Divider(color: CColors.secondaryColor),
          ],
        ),
      ),
    );
  }
}
