import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class DualTabbarWidget extends StatelessWidget {
  const DualTabbarWidget({
    this.bgColor = CColors.whiteColor,
    super.key,
    this.controller,
    this.unselectedLabelColor = CColors.primaryColor,
    required this.tablist,
  });
  final TabController? controller;
  final List<Widget> tablist;
  final Color bgColor, unselectedLabelColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: CRoundedContainer(
        backgroundColor: bgColor,
        radius: 50,
        padding: const EdgeInsets.symmetric(
            horizontal: CSizes.defaultSpace * 2, vertical: 8),
        child: TabBar(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            // tabAlignment: TabAlignment.start,
            labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: CColors.primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
            unselectedLabelColor: unselectedLabelColor,
            labelColor: CColors.whiteColor,
            indicatorSize: TabBarIndicatorSize.tab,
            automaticIndicatorColorAdjustment: true,
            labelPadding: const EdgeInsets.symmetric(
                horizontal: CSizes.xl, vertical: CSizes.sm),
            dividerColor: Colors.transparent,
            indicatorColor: CColors.accentColor,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: CColors.secondaryColor),
            // isScrollable: true,
            tabs: tablist),
      ),
    );
  }
}
