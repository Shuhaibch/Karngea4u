import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/job_details/screens/job_details_screen.dart';
import 'package:ribbon_widget/ribbon_widget.dart';

class PremiumJobListCardWidget extends StatelessWidget {
  const PremiumJobListCardWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const JobDetailsScreen(),
        ));
      },
      child: CCardWidget(
        outterPadding: const EdgeInsets.only(
            bottom: CSizes.sm, right: CSizes.sm, left: CSizes.sm),
        elevation: 5,
        padding: const EdgeInsets.all(0),
        child: Ribbon(
          location: RibbonLocation.topEnd,
          nearLength: 30,
          farLength: 50,
          title: "Premium",
          titleStyle: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: CColors.whiteColor, fontSize: 7),
          color: CColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(CSizes.md),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .27,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Stack Developer',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Iconsax.calendar5,
                              color: CColors.primaryColor,
                              size: width * .02,
                            ),
                          ),
                          Text(
                            '16 DEC 2024',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Iconsax.location,
                              color: CColors.primaryColor,
                              size: width * .02,
                            ),
                          ),
                          Text(
                            'Kerala India',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                      const SizedBox(height: CSizes.sm),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Iconsax.briefcase,
                              color: CColors.primaryColor,
                              size: width * .02,
                            ),
                          ),
                          Text(
                            '\$100 - \$500 / Month',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          const SizedBox(width: CSizes.md),
                          Text('30 Min',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Iconsax.bookmark,
                  size: width * .02,
                  color: CColors.primaryColor,
                ),
                const SizedBox(width: CSizes.sm),
                CRoundedContainer(
                  showBorder: true,
                  borderColor: CColors.primaryColor,
                  radius: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "New",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: CColors.errorColor, fontSize: 10),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image(
                        height: height * .045,
                        width: width * .04,
                        image: const AssetImage(
                          CImageString.jobImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: CSizes.sm),
                      Text(
                        'Swizz Food ',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontSize: 11, overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
