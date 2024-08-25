import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class NotificationMessageCardWidget extends StatelessWidget {
  const NotificationMessageCardWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      elevation: 15,
      borderColor: CColors.blackColor,
      backgroundColor: CColors.primaryColor,
      padding: const EdgeInsets.symmetric(
          horizontal: CSizes.sm, vertical: CSizes.md),
      outterPadding: const EdgeInsets.all(CSizes.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Iconsax.message,
            color: CColors.whiteColor,
          ),
          const SizedBox(width: CSizes.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Flutter Developer',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: CColors.whiteColor),
                ),
                SizedBox(
                  child: Text(
                    'Hello ! May I help you? What are you asking for osdsdsdur com...',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: CColors.whiteColor,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                // const SizedBox(height: CSizes.sm),
                Text(
                  '24-Nov-2023',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: CColors.whiteColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
