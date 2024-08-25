import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/image/custom_rounded_image_container.dart';
import 'package:karngea4u/core/commen/widgets/layout/grid_layout.dart';
import 'package:karngea4u/core/commen/widgets/video_player/custom_video_player.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerDetailsVideosTabbarWidget extends StatelessWidget {
  const EmployerDetailsVideosTabbarWidget({super.key});

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
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: height * .248,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const YouTubePlayerWidget(),
              ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: height * .14,
                  child: Stack(
                    children: [
                      CCustomRoundedImage(
                        height: height * .14,
                        width: double.infinity,
                        imageUrl: CImageString.employerImage,
                        fit: BoxFit.cover,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Image(
                          // width: 80,
                          alignment: Alignment.center,
                          // height: 50,
                          image: AssetImage(
                            CImageString.ytLGIcons,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Ezee Absolute",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: CColors.blackColor,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: CColors.blackColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                  maxLines: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
