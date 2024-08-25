
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobDetailsContactInfoCardWidget extends StatelessWidget {
  const JobDetailsContactInfoCardWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      elevation: 5,
      padding: const EdgeInsets.all(CSizes.sm),
      outterPadding: const EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Information',
              style: Theme.of(context).textTheme.headlineSmall!),
          Row(
            children: [
              Icon(
                Iconsax.user,
                color: CColors.primaryColor,
                size: width * .02,
              ),
              const SizedBox(width: CSizes.xs),
              Text(
                "Contact Person: Ms.Dane Hay",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(
                        color: CColors.blackColor,
                        fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Iconsax.call,
                color: CColors.primaryColor,
                size: width * .02,
              ),
              const SizedBox(width: CSizes.xs),
              Text(
                "Phone: 023213123/93345479",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(
                        color: CColors.blackColor,
                        fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.email_outlined,
                color: CColors.primaryColor,
                size: width * .02,
              ),
              const SizedBox(width: CSizes.xs),
              Text(
                "Email: dane1@epenh.com",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(
                        color: CColors.blackColor,
                        fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Iconsax.global,
                color: CColors.primaryColor,
                size: width * .02,
              ),
              const SizedBox(width: CSizes.xs),
              Text(
                "Website: https://epenh.com/en/",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(
                        color: CColors.blackColor,
                        fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
