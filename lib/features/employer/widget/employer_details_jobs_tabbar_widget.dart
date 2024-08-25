import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/job/jobs/widget/premium_job_list_card_widget.dart';

class EmployerDetailsJobsTabbarWidget extends StatelessWidget {
  const EmployerDetailsJobsTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    final height = CDeviceUtils.getScreenheight(context);
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) =>
          PremiumJobListCardWidget(width: width, height: height),
    );
  }
}
