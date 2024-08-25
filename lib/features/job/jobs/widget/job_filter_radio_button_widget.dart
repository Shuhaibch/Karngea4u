import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class JobRadioButtonWidget extends StatelessWidget {
  const JobRadioButtonWidget({
    super.key,
    required this.value,
    this.onChanged,
    this.groupValue,
    this.title,
    this.textColor = CColors.whiteColor,
    this.iconColor = CColors.whiteColor,
  });

  final String? value, groupValue, title;
  final Color textColor, iconColor;

  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value!,
          splashRadius: 10,
          groupValue: groupValue,
          onChanged: onChanged,
          visualDensity: VisualDensity.compact,
          fillColor: WidgetStatePropertyAll(iconColor),
          activeColor: CColors.whiteColor,
        ),
        Text(
          title!,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: textColor, overflow: TextOverflow.ellipsis, fontSize: 12),
        )
      ],
    );
  }
}
