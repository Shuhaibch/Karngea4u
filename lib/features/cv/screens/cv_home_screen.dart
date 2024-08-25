import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/layout/grid_layout.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvHomeScreen extends StatelessWidget {
  const CvHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    final gridList = CDummyData.cvWidgetList(context);
    return Scaffold(
      backgroundColor: CColors.primaryColor,
      appBar: CAppbar(
        showBackArrow: true,
        backgroungColor: CColors.primaryColor,
        dividerColor: CColors.whiteColor,
        iconColor: CColors.whiteColor,
        title: Text(
          'MANAGE RESUME',
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
          padding: const EdgeInsets.symmetric(
              vertical: 8.0, horizontal: CSizes.defaultSpace),
          child: CGridLayout(
            crossAxisCount: 3,
            crossAxisSpacing: width * .025,
            mainAxisSpacing: width * .017,
            mainAxisExtent: height * .12,
            itemBuilder: (context, index) => InkWell(
              onTap: gridList[index].onTap,
              child: CRoundedContainer(
                backgroundColor: Colors.transparent,
                borderColor: CColors.secondaryColor,
                showBorder: true,
                borderWidth: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      gridList[index].icon,
                      color: CColors.whiteColor,
                    ),
                    const SizedBox(height: CSizes.sm),
                    Text(
                      gridList[index].title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: CColors.whiteColor),
                    )
                  ],
                ),
              ),
            ),
            itemCount: gridList.length,
          ),
        ),
      ),
    );
  }
}
