import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/cv/widgets/cv_basic_details_header_icon_widget.dart';

class CvBasicDetailsScreen extends StatelessWidget {
  const CvBasicDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        backgroungColor: CColors.primaryColor,
        showBackArrow: true,
        title: Text(
          'BASIC DETAIL',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        dividerColor: CColors.secondaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              height: height * .02,
              width: width * .08,
              image: const AssetImage(
                CImageString.appWhiteLogo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CVBasicDetailsHeaderIconWidget(width: width, height: height),
          Padding(
            padding: const EdgeInsets.all(CSizes.md),
            child: Slidable(
              key: const ValueKey(0),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    flex: 1,
                    onPressed: (context) {
                      Navigator.pop(context);
                    },
                    backgroundColor: CColors.secondaryColor,
                    foregroundColor: Colors.white,
                    icon: Iconsax.edit,
                    autoClose: true,
                    label: '',
                  ),
                ],
              ),
              child: CCardWidget(
                elevation: 5,
                outterPadding: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(CSizes.md),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Experience",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "2 Years",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Date Of Birth",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "29 Dec 1994",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Gender",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "Female",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Martial Status",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "Married",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Current Salary",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "250 USD",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Expectation Salary",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "400 USD",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Nationality",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                        Expanded(
                            child: Text(
                          "Khmer",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: CColors.blackColor),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
