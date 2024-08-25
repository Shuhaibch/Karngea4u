import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/helper/string_helper.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobDetailsTitlesubTitleCardWidget extends StatelessWidget {
  const JobDetailsTitlesubTitleCardWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      elevation: 5,
      padding: const EdgeInsets.all(CSizes.sm),
      outterPadding: const EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall!),
          Text(
            CStringHelper.addNewLine(subTitle),
            maxLines: null,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: CColors.blackColor, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
