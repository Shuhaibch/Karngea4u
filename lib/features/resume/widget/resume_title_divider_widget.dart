import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class ResumeTitleWithDviderWidget extends StatelessWidget {
  const ResumeTitleWithDviderWidget({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: CColors.primaryColor),
        ),
        const Divider(color: CColors.primaryColor)
      ],
    );
  }
}
