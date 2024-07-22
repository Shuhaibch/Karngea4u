import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/container/search_container.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';

class JobHomeScreen extends StatelessWidget {
  const JobHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        backgroungColor: CColors.primaryColor,
        iconColor: CColors.whiteColor,
        showBackArrow: true,
        centerTitle: true,
        padding: 0,
        title: Text(
          'JOBS',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Iconsax.sort,
              color: CColors.whiteColor,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Container(
              width: width,
              color: CColors.primaryColor,
              height: height * .15,
            ),
          ),
          Column(
            children: [
              CSearchContainer(
                text: "Search",
                showBackground: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
