import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/my_job_history/widgets/my_job_history_head_card_widget.dart';
import 'package:karngea4u/features/message/screens/message_details_screen.dart';
import 'package:karngea4u/features/message/widgets/message_tile_card_widget.dart';

class MessageHomeScreen extends StatelessWidget {
  const MessageHomeScreen({super.key});

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
          'Message',
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
              child: CountRowImageHeadCardWidget(
                height: height,
                title1: "Total Company",
                title2: "Unread Message",
                subTitle2: "5",
                subTitle1: "2",
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => MessageTileCardWidget(
                      height: height,
                      width: width,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MessageDetailsScreen(),
                        ));
                      },
                    ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: CSizes.sm),
                itemCount: 6)
          ],
        ),
      ),
    );
  }
}
