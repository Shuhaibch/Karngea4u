import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class JobDetailsHeadCardWidget extends StatelessWidget {
  const JobDetailsHeadCardWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CCardWidget(
      outterPadding: const EdgeInsets.all(0),
      elevation: 5,
      padding: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(CSizes.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * .27,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Stack Developer',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        ' Kerala India |',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 13, color: CColors.blackColor),
                      ),
                      Text(
                        '| 16 DEC 2024',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 13, color: CColors.blackColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: CSizes.lg),
                  Row(
                    children: [
                      Text(
                        '\$100 - \$500 / Month',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: CColors.blackColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HexagonWidget.pointy(
                    height: height * .07,
                    width: width * .08,
                    child: Image(
                      height: height * .07,
                      width: width * .08,
                      image: const AssetImage(
                        CImageString.jobImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: CSizes.sm),
                  Text(
                    'Swizz Food ',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        color: CColors.blackColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
