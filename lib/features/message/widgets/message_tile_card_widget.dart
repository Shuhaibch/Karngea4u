// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class MessageTileCardWidget extends StatelessWidget {
  const MessageTileCardWidget({
    super.key,
    required this.height,
    required this.width,
    this.onTap,
  });

  final double height;
  final double width;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CCardWidget(
        elevation: 5,
        outterPadding: const EdgeInsets.symmetric(
            vertical: CSizes.xs, horizontal: CSizes.sm),
        padding: const EdgeInsets.all(
          0,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: CSizes.md, vertical: CSizes.sm),
              child: Image(
                height: height * .07,
                width: width * .07,
                image: const AssetImage(
                  CImageString.jobImage,
                ),
                fit: BoxFit.fill,
              ),
            ),
            Flexible(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Swiss Food Co.,Ltd',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: CColors.blackColor,
                          fontWeight: FontWeight.bold)),
                  Text(
                      'Loma Technology is a software company based in Phnom Penh, Cambodia with....',
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: CColors.blackColor)),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '5 Min',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: CColors.blackColor),
                  ),
                  const SizedBox(height: CSizes.sm),
                  CRoundedContainer(
                    radius: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: CSizes.xs,
                    ),
                    backgroundColor: CColors.primaryColor,
                    child: Text(
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: CColors.whiteColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
