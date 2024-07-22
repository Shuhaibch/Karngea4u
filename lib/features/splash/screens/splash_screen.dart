import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:karngea4u/core/commen/style/spacing_style.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppbarStyle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .2,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Image(
                  height: 150,
                  image: AssetImage(
                    CImageString.appLogo,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Career for a better future",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(letterSpacing: 1),
              ),
              const SizedBox(
                height: CSizes.spaceBtwSection,
              ),
              const Image(
                height: 50,
                image: AssetImage(CImageString.splashImage1),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
        },
        // style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
        child: const FaIcon(FontAwesomeIcons.arrowRight),
      ),
    );
  }
}
