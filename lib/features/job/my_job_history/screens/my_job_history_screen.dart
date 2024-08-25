import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/my_job_history/widgets/my_job_history_head_card_widget.dart';
import 'package:karngea4u/features/job/my_job_history/widgets/my_job_list_card_widget.dart';

class MyJobScreen extends StatelessWidget {
  const MyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        backgroungColor: CColors.primaryColor,
        dividerColor: CColors.whiteColor,
        iconColor: CColors.whiteColor,
        showDivider: false,
        title: Text(
          'MY JOB HISTORY',
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
        child: Padding(
          padding: const EdgeInsets.all(CSizes.md),
          child: Column(
            children: [
              CountRowImageHeadCardWidget(
                height: height,
                title1: "Total Applied Job",
                title2: "Message",
                subTitle1: "150",
                subTitle2: "15",
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      MyJobHistoryListCardWidget(width: width, height: height),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: CSizes.sm),
                  itemCount: 6)
            ],
          ),
        ),
      ),
    );
  }
}
