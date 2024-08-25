import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class EmployerDetailsScreenTitleSubTitleColumWidget extends StatelessWidget {
  const EmployerDetailsScreenTitleSubTitleColumWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.isExpanded = false,
  });
  final String title, subTitle;
  final bool isExpanded;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(fontWeight: FontWeight.bold, color: CColors.blackColor),
        ),
        Text(
          subTitle,
          maxLines: isExpanded ? null : 1,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: CColors.blackColor,
              overflow: isExpanded ? null : TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
