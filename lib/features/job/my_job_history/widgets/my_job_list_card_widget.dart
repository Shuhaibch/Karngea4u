import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/job_details/screens/job_details_screen.dart';

class MyJobHistoryListCardWidget extends StatelessWidget {
  const MyJobHistoryListCardWidget({
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
        outterPadding: const EdgeInsets.only(),
        elevation: 5,
        padding: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    Text(
                      "\$ 100 - \$ 500 / Month",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 13),
                    ),
                    Text(
                      "Phnom Penh",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 13),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Applied on :",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 13),
                      ),
                      TextSpan(
                        text: " 13 Dec 2024",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 13, color: CColors.errorColor),
                      ),
                    ])),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Expired on :",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 13),
                      ),
                      TextSpan(
                        text: " 13 Dec 2024",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 13,
                            ),
                      ),
                    ])),
                    Row(
                      children: [
                        CRoundedContainer(
                          showBorder: true,
                          borderColor: CColors.secondaryColor,
                          padding:
                              const EdgeInsets.symmetric(horizontal: CSizes.lg),
                          child: Text(
                            "Phnom Penh",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 13),
                          ),
                        ),
                        CRoundedContainer(
                          showBorder: true,
                          borderColor: CColors.secondaryColor,
                          padding:
                              const EdgeInsets.symmetric(horizontal: CSizes.sm),
                          child: Row(
                            children: [
                              Text(
                                "Message",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontSize: 13),
                              ),
                              const SizedBox(width: CSizes.xs),
                              CRoundedContainer(
                                radius: 50,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: CSizes.xs),
                                backgroundColor: CColors.secondaryColor,
                                child: Text(
                                  "1",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          fontSize: 8,
                                          color: CColors.whiteColor),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      height: height * .09,
                      width: width * .09,
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
                              fontSize: 11,
                              overflow: TextOverflow.ellipsis,
                              color: CColors.blackColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
