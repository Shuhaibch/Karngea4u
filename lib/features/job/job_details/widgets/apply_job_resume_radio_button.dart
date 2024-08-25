import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class ApplyJobResumeRadioButtonWidget extends StatelessWidget {
  const ApplyJobResumeRadioButtonWidget({
    super.key,
    required this.groupValue,
    required this.width,
    this.onChanged,
  });

  final String? groupValue;
  final double width;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Radio(
            value: "Upload CV",
            splashRadius: 10,
            groupValue: groupValue,
            onChanged: onChanged,
            visualDensity: VisualDensity.compact,
            fillColor: const WidgetStatePropertyAll(CColors.blackColor),
            activeColor: CColors.whiteColor,
          ),
          CRoundedContainer(
            backgroundColor: CColors.secondaryColor,
            padding: const EdgeInsets.symmetric(
                vertical: CSizes.xs, horizontal: CSizes.sm),
            child: Row(
              children: [
                Icon(Icons.camera_alt_outlined,
                    size: width * .025, color: CColors.whiteColor),
                const SizedBox(width: CSizes.xxs),
                Text(
                  "Upload CV",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: CColors.whiteColor,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
