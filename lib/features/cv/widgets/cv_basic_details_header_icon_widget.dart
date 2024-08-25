import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class CVBasicDetailsHeaderIconWidget extends StatelessWidget {
  const CVBasicDetailsHeaderIconWidget({
    super.key,
    required this.width,
    required this.height,
    this.icon = Iconsax.user_tick,
  });
  final IconData icon;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
      ),
      child: Container(
        width: width,
        color: CColors.primaryColor,
        height: height * .082,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(),
            CRoundedContainer(
              backgroundColor: Colors.transparent,
              borderColor: CColors.whiteColor,
              radius: 50,
              showBorder: true,
              borderWidth: 1.5,
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                color: CColors.whiteColor,
                size: height * .04,
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
