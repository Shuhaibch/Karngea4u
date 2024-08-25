import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class ResumeBasicDetailsRowWidget extends StatelessWidget {
  const ResumeBasicDetailsRowWidget({
    super.key,
    required this.width,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.showDivider = true,
  });

  final double width;
  final IconData icon;
  final String title, subTitle;
  final bool showDivider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 4,
              child: Row(
                children: [
                  Icon(icon, color: CColors.secondaryColor),
                  SizedBox(width: width * .02),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: CColors.secondaryColor),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Text(
                !showDivider ? "" : subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: CColors.darkerGreyColor),
              ),
            )
          ],
        ),
        showDivider
            ? const Divider(color: CColors.primaryColor)
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      subTitle,
                      textAlign: TextAlign.left,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: CColors.darkerGreyColor),
                    ),
                  ),
                  const Divider(color: CColors.primaryColor)
                ],
              ),
      ],
    );
  }
}
