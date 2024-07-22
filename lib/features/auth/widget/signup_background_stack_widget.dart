import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class SignUpBackgroundStackWidget extends StatelessWidget {
  const SignUpBackgroundStackWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .4,
      child: Stack(
        children: [
          //? Right Image
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              height: height * .18,
              // width: width * .25,
              image: const AssetImage(
                CImageString.signUpBg,
              ),
              width: width,

              fit: BoxFit.cover,
            ),
          ),

          //? Center Icon
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Image(
                  height: height * .1,
                  // width: width * .25,
                  image: const AssetImage(
                    CImageString.signUpCenter,
                  ),
                  // width: width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: CSizes.spaceBtwItem),
                Text(
                  'Create Your Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: CColors.whiteColor),
                )
              ],
            ),
          ),

          //? Left Image
          Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Image(
                  height: height * .18,
                  image: const AssetImage(
                    CImageString.signUpL1,
                  ),
                  width: width * .07,
                  fit: BoxFit.cover,
                ),
                Image(
                  height: height * .18,
                  image: const AssetImage(
                    CImageString.signUpL2,
                  ),
                  width: width * .07 - 10,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          //? Right Image
          Align(
            alignment: Alignment.topRight,
            child: Stack(
              children: [
                Image(
                  height: height * .18,
                  image: const AssetImage(
                    CImageString.signUpR1,
                  ),
                  width: width * .07,
                  fit: BoxFit.cover,
                ),
                Image(
                  height: height * .18,
                  image: const AssetImage(
                    CImageString.signUpR2,
                  ),
                  width: width * .07 - 10,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
