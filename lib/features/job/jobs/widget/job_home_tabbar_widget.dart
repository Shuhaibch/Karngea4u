import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobHomeTabBarWidget extends StatefulWidget {
// final void Function()? premiumOnTap, standardOnTap;

  const JobHomeTabBarWidget({
    super.key,
  });

  @override
  State<JobHomeTabBarWidget> createState() => _JobHomeTabBarWidgetState();
}

class _JobHomeTabBarWidgetState extends State<JobHomeTabBarWidget> {
  bool isPremium = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: CRoundedContainer(
        padding: const EdgeInsets.symmetric(
            horizontal: CSizes.defaultSpace, vertical: 10),
        backgroundColor: CColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: CSizes.defaultSpace),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isPremium = true;
                  });
                },
                child: CRoundedContainer(
                  radius: 10,
                  backgroundColor:
                      isPremium ? CColors.primaryColor : CColors.whiteColor,
                  padding: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: CSizes.defaultSpace),
                  child: Text(
                    'Premium',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          isPremium ? CColors.whiteColor : CColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: CSizes.defaultSpace),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isPremium = false;
                  });
                },
                child: CRoundedContainer(
                  radius: 10,
                  backgroundColor:
                      isPremium ? CColors.whiteColor : CColors.primaryColor,
                  padding: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: CSizes.defaultSpace),
                  child: Text(
                    'Standard',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          isPremium ? CColors.primaryColor : CColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
