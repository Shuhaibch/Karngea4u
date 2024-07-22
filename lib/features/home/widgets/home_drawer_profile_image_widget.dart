import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/image/image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class HomeDrawerProfileImageWidget extends StatelessWidget {
  const HomeDrawerProfileImageWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return Scaffold(
                    body: Center(
                      child: Stack(
                        children: [
                          const CRoundedImage(imageUrl: CImageString.userIcons),
                          Positioned(
                            right: 5,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Iconsax.close_circle,
                                color: CColors.whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: CRoundedImage(
              backgroundColor: Colors.amber,
              imageUrl: CImageString.userIcons,
              height: height * .09,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: height * .015,
                backgroundColor: CColors.secondaryColor,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: height * .02,
                  color: CColors.whiteColor,
                ),
              ))
        ],
      ),
    );
  }
}
