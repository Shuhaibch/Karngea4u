import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CVCardDeleteDialogWidget extends StatelessWidget {
  const CVCardDeleteDialogWidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
  });

  final double height;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: CColors.blackColor),
                  ),
                ],
              ),
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
                      child: const Text('Yes'),
                    ),
                  ),
                  const SizedBox(width: CSizes.md),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Close the AlertDialog
                        Navigator.of(context).pop();
                      },
                      child: const Text('No'),
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
