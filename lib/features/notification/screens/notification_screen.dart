import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/notification/widget/notification_job_card_widget.dart';
import 'package:karngea4u/features/notification/widget/notification_message_card_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      backgroundColor: CColors.primaryColor,
      appBar: CAppbar(
        showBackArrow: true,
        backgroungColor: CColors.primaryColor,
        dividerColor: CColors.whiteColor,
        iconColor: CColors.whiteColor,
        showDivider: false,
        title: Text(
          'NOTIFICATIONS',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CRoundedContainer(
              padding: EdgeInsets.symmetric(horizontal: 6),
              backgroundColor: Colors.transparent,
              borderColor: CColors.whiteColor,
              showBorder: true,
              radius: 50,
              child: Text(
                "4",
                style: TextStyle(color: CColors.whiteColor),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          NotificationJobCardWidget(width: width),
          NotificationMessageCardWidget(width: width),
        ],
      ),
    );
  }
}
