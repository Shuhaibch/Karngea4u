import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/style/spacing_style.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';

class LoginBackgoundStack extends StatelessWidget {
  const LoginBackgoundStack({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .5,
      child: Stack(
        children: [
          //? Right Image
          Align(
            alignment: Alignment.topRight,
            child: Image(
              height: height * .2,
              // width: width * .25,
              image: const AssetImage(
                CImageString.loginGR,
              ),
              width: width * .1,
              fit: BoxFit.cover,
            ),
          ),

          //? Left Image
          Positioned(
            top: height * .1,
            child: Stack(
              children: [
                Image(
                  height: height * .3,
                  image: const AssetImage(
                    CImageString.loginGL,
                  ),
                  width: width * .1,
                  fit: BoxFit.cover,
                ),
                Image(
                  height: height * .3,
                  image: const AssetImage(
                    CImageString.loginGL1,
                  ),
                  width: width * .1 - 10,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: height * .09,
                  child: const Image(
                    // height: height * .3,
                    image: AssetImage(
                      CImageString.loginGL2,
                    ),
                    // width: width * .1,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          //? Icon Image
          Padding(
            padding: CSpacingStyle.paddingWithAppbarStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Image(
                        height: 70,
                        width: width * .3,
                        image: const AssetImage(
                          CImageString.appLogo,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
