// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerSearchCardWidget extends StatelessWidget {
  const EmployerSearchCardWidget({
    super.key,
    required this.height,
    required this.width, this.onTap,
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
        child: IntrinsicHeight(
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
              const VerticalDivider(
                color: CColors.secondaryColor,
                thickness: 1,
              ),
              const SizedBox(width: CSizes.md),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Vac Pharma Co.,Ltd',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: CColors.blackColor)),
                    Text(
                        '#N63 ផ្លូវ ញ៉ូតុន(ក្នុងកោះពេជ្រ) សង្កាត់ទន្លេបាសាក់ ខណ្ឌចំការមន ភ្នំពេញ',
                        maxLines: 2,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: CColors.blackColor)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
