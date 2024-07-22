import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class SettingDialogWidget extends StatelessWidget {
  const SettingDialogWidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subTitle,
  });

  final double height;
  final String title, subTitle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CRoundedContainer(
        height: height * .25,
        backgroundColor: CColors.whiteColor,
        width: width * .9,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              backgroundColor: const WidgetStatePropertyAll(
                                  CColors.secondaryColor)),
                      onPressed: () {
                        // Close the AlertDialog
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: CSizes.sm),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
