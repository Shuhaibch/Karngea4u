import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobAdditionalInfoGridWidget extends StatelessWidget {
  const JobAdditionalInfoGridWidget({
    super.key,
    required this.width,
    required this.icon,
    required this.title,
    required this.subTitle,
  });
  final IconData icon;
  final double width;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      outterPadding: const EdgeInsets.only(),
      padding: const EdgeInsets.all(5),
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: CColors.primaryColor,
            size: width * .014,
          ),
          const SizedBox(width: CSizes.xs),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: CColors.blackColor,
                                overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: CSizes.xs),
                Expanded(
                  child: Text(
                    subTitle,

                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        // fontWeight: FontWeight.bold,
                        color: CColors.blackColor,
                        overflow: TextOverflow.ellipsis,
                        height: 1),
                    maxLines: 2,
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
