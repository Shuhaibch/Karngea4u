import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerComponyDetailsTabBarWidget extends StatelessWidget {
  const EmployerComponyDetailsTabBarWidget({
    super.key, required this.isPremium,
  });
  final bool isPremium;
  @override
  Widget build(BuildContext context) {
    final List<Widget> standardList = [
      const Text('ABOUT US'),
      const Text('JOBS'),
      const Text('WHY JOIN US'),
    ];
    final List<Widget> premiumList = [
      const Text('ABOUT US'),
      const Text('JOBS'),
      const Text('WHY JOIN US'),
      const Text('PHOTOS'),
      const Text('Q & A'),
      const Text('PRODUCT & SERVICE'),
      const Text('VIDEOS'),
      const Text('BLOGS'),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: CRoundedContainer(
        backgroundColor: CColors.primaryColor,
        radius: 50,
        padding: const EdgeInsets.symmetric(
            horizontal: CSizes.defaultSpace, vertical: 12),
        child: TabBar(
          physics: const BouncingScrollPhysics(),
          tabAlignment: TabAlignment.start,
          labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: CColors.whiteColor,
              fontSize: 12,
              fontWeight: FontWeight.bold),
          unselectedLabelColor: CColors.whiteColor,
          labelColor: CColors.whiteColor,
          indicatorSize: TabBarIndicatorSize.tab,
          automaticIndicatorColorAdjustment: true,
          labelPadding: const EdgeInsets.symmetric(
              horizontal: CSizes.xl, vertical: CSizes.xs),
          dividerColor: Colors.transparent,
          indicatorColor: CColors.accentColor,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: CColors.secondaryColor),
          isScrollable: true,
          tabs: isPremium?premiumList:standardList
        ),
      ),
    );
  }
}
