import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/screens/forget_password/reset_password_email_phone_screen.dart';
import 'package:karngea4u/features/auth/widget/login_backgournd_stack.dart';

class ForgetPasswordButtonScreen extends StatelessWidget {
  const ForgetPasswordButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          LoginBackgoundStack(height: height, width: width),
          Positioned(
            top: height * .2,
            left: width * .15,
            child: Text(
              "Reset Password",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * .35,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                const ResetPasswordEmailPhoneScreen(
                              isEmail: false,
                            ),
                          ));
                        },
                        child: const Text('Mobile'))),
                const SizedBox(height: CSizes.spaceBtwSection),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const ResetPasswordEmailPhoneScreen(
                            isEmail: true,
                          ),
                        ));
                      },
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                              backgroundColor: const WidgetStatePropertyAll(
                                  CColors.secondaryColor)),
                      child: const Text('Email'),
                    )),
              ],
            ),
          )
        ],
      )),
    );
  }
}
