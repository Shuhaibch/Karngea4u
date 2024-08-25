import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerDetailsHeadFollowUnFollowDiologWidget extends StatelessWidget {
  const EmployerDetailsHeadFollowUnFollowDiologWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CRoundedCardWidget(
                  elevation: 8,
                  outterPadding: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(CSizes.md),
                  child: Image(
                    height: height * .06,
                    width: width * .06,
                    image: const AssetImage(
                      CImageString.jobImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Follow",
                        maxLines: 2,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: CColors.blackColor),
                      ),
                      const SizedBox(height: CSizes.spaceBtwItem),
                      Text(
                        "VAC PHARMA CO.,LTD\nAre you sure to follow?",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: CColors.blackColor,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              // maximumSize: WidgetStatePropertyAll(Size(width, height)),
                              backgroundColor: const WidgetStatePropertyAll(
                                  CColors.secondaryColor)),
                      onPressed: () {
                        // Close the AlertDialog
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: CSizes.md),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Close the AlertDialog
                        Navigator.of(context).pop();
                      },
                      child: const Text('Okey'),
                    ),
                  ),
                  const SizedBox(height: CSizes.lg),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
