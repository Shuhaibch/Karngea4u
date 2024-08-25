import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class ResumeIconTextRowWidget extends StatelessWidget {
  const ResumeIconTextRowWidget({
    super.key,
    required this.width,
    required this.title,
    required this.icon,
    this.isHead = false,
  });
  final String title;
  final IconData icon;
  final bool isHead;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: CColors.secondaryColor),
        SizedBox(width: width * .02),
        Flexible(
          child: Text(
            title,
            textAlign: TextAlign.left,
            maxLines: null,
            style: isHead
                ? Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: CColors.darkerGreyColor)
                : Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: CColors.darkerGreyColor),
          ),
        ),
      ],
    );
  }
}
