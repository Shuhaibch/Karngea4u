import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/image/custom_rounded_image_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/blog/screens/blog_details_screen.dart';

class BlogCardWidget extends StatelessWidget {
  const BlogCardWidget({
    super.key,
    required this.width,
    required this.height,
    this.isDetailPage=false,
  });
  final bool isDetailPage;
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      outterPadding: const EdgeInsets.only(),
      elevation: 5,
      padding: const EdgeInsets.all(0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CCustomRoundedImage(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            imageUrl: CImageString.blogCardImage,
            height:isDetailPage? height * .1: height * .15,
            width: width * .12,
            fit: BoxFit.cover,
            padding: const EdgeInsets.all(0),
          ),
          Expanded(
            // width: width * .27,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
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
                        'Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!Hoteliers Summit in Galle was an absolute success, filled with valuable insights and unforgettable moments!',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen(),
                          ));
                        },
                        child: const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          child: CRoundedContainer(
                            radius: 0,
                            padding: EdgeInsets.only(
                                top: CSizes.sm,
                                left: 45,
                                right: 45,
                                bottom: CSizes.xxs),
                            backgroundColor: CColors.secondaryColor,
                            child: Text(
                              'view',
                              style: TextStyle(color: CColors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
