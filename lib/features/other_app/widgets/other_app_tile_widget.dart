
import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class OtherAppTileWidget extends StatelessWidget {
  const OtherAppTileWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.sm),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CRoundedImage(
                      imageUrl: CImageString.otherAppImage,
                      width: width * .1,
                    ),
                    const SizedBox(width: CSizes.sm),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Takeaway555"),
                        Text("www.takeaway555.com"),
                      ],
                    ),
                  ],
                ),
              ),
    
              // SizedBox(width: CSizes.xs),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CRoundedContainer(
                      width: double.infinity,
                      backgroundColor: CColors.secondaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: CSizes.sm, vertical: CSizes.xs),
                      child: Text(
                        "Download App",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                                color: CColors.whiteColor, fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: CSizes.sm),
                    CRoundedContainer(
                      width: double.infinity,
                      backgroundColor: CColors.primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: CSizes.sm, vertical: CSizes.xs),
                      child: Text(
                        "Website  ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                                color: CColors.whiteColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            color: CColors.primaryColor,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
