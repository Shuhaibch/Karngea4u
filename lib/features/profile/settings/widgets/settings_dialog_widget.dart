import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class SettingDialogWidget extends StatelessWidget {
  const SettingDialogWidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final double height;
  final String title, subTitle;
  final double width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
              mainAxisSize: MainAxisSize.min,
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
                    onPressed: onPressed,
                    child: const Text('Okey'),
                  ),
                ),
                const SizedBox(height: CSizes.lg),
              ],
            )
          ],
        ),
      ),
    );
  }
}
