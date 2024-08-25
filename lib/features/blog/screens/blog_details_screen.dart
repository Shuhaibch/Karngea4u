import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

import '../../../core/commen/widgets/appbar/appbar.dart';

class BlogDetailsScreen extends StatelessWidget {
  const BlogDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        showDivider: false,
        iconColor: CColors.primaryColor,
        title: Text(
          'BLOGS',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              height: height * .02,
              width: width * .08,
              image: const AssetImage(
                CImageString.appLogo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CRoundedImage(
              imageUrl: CImageString.blogCardImage,
              width: double.infinity,
              height: height * .3,
              applyImageRadius: false,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ezee Absolute',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 14, color: CColors.blackColor),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Iconsax.calendar5,
                          color: CColors.primaryColor,
                          size: width * .015,
                        ),
                      ),
                      Text(
                        '16 DEC 2024',
                        style: Theme.of(context).textTheme.labelSmall!,
                      ),
                    ],
                  ),
                  Text(
                    'Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        // overflow: TextOverflow.ellipsis,
                        ),
                    // maxLines: 3,
                  ),
                  const SizedBox(height: CSizes.spaceBtwItem),
                  CRoundedImage(
                    imageUrl: CImageString.blogCardImage,
                    width: double.infinity,
                    height: height * .25,
                    applyImageRadius: false,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: CSizes.spaceBtwItem),
                  Text(
                    'Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        // overflow: TextOverflow.ellipsis,
                        ),
                    // maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
