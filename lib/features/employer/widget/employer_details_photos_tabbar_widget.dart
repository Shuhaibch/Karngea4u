import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/image/custom_rounded_image_container.dart';
import 'package:karngea4u/core/commen/widgets/layout/grid_layout.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerDetailsPhotosTabbarWidget extends StatelessWidget {
  const EmployerDetailsPhotosTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = CDeviceUtils.getScreenWidth(context);
    final height = CDeviceUtils.getScreenheight(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: CSizes.sm, vertical: CSizes.sm),
        child: CGridLayout(
          itemCount: 12,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: height * .17,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const Dialog(
                    child: Image(
                      width: double.infinity,
                      // height: double.infinity,
                      image: AssetImage(
                        CImageString.employerImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            },
            child: Column(
              children: [
                CCustomRoundedImage(
                  height: height * .14,
                  width: double.infinity,
                  imageUrl: CImageString.employerImage,
                  fit: BoxFit.cover,
                ),
                Text(
                  "Ezee Absolute",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: CColors.blackColor,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
