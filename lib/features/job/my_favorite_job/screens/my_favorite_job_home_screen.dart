import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/container/job_number_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/jobs/widget/premium_job_list_card_widget.dart';

class MyFavoriteJobHomeScreen extends StatelessWidget {
  const MyFavoriteJobHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        backgroungColor: CColors.primaryColor,
        showDivider: false,
        iconColor: CColors.whiteColor,
        title: Text(
          'MY FAVORITE JOBS',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(CSizes.sm),
              child: JobNumberImageHeadCardWidget(
                  height: height, title: "Total Favorite Job", subTitle: "2"),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    PremiumJobListCardWidget(width: width, height: height),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: CSizes.sm),
                itemCount: 6)
          ],
        ),
      ),
    );
  }
}
