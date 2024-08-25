import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class ResumeContainerHeadWidget extends StatelessWidget {
  const ResumeContainerHeadWidget({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      backgroundColor: CColors.primaryColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
          vertical: CSizes.sm, horizontal: CSizes.xl),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: CColors.whiteColor),
      ),
    );
  }
}
