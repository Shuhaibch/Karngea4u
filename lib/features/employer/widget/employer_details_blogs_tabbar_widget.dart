import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/blog/widgets/blog_card_widget.dart';

class EmployerDetailsBlogsTabbarWidget extends StatelessWidget {
  const EmployerDetailsBlogsTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.sm),
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => BlogCardWidget(
          // isDetailPage: true,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
