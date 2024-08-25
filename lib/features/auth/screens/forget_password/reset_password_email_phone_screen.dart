import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/auth_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/screens/forget_password/reset_password_form_feild_screen.dart';
import 'package:karngea4u/features/auth/widget/login_backgournd_stack.dart';

class ResetPasswordEmailPhoneScreen extends StatefulWidget {
  const ResetPasswordEmailPhoneScreen({super.key, this.isEmail = true});
  final bool isEmail;
  @override
  State<ResetPasswordEmailPhoneScreen> createState() =>
      _ResetPasswordEmailPhoneScreenState();
}

class _ResetPasswordEmailPhoneScreenState
    extends State<ResetPasswordEmailPhoneScreen> {
  final TextEditingController emailORNumberCTRL = TextEditingController();
  final TextEditingController otpCTRL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
            
                  //* Email OR Number
                  AuthTextFormFeild(
                      icon: widget.isEmail ? Icons.email : Icons.phone_outlined,
                      controller: emailORNumberCTRL,
                      hintText: widget.isEmail ? "Email" : "Mobile"),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
            
                  //* OTP
                  AuthTextFormFeild(
                      icon: Icons.lock_person_outlined,
                      controller: otpCTRL,
                      hintText: "OTP Code"),
                  const SizedBox(height: CSizes.spaceBtwSection),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                const ResetPasswordFormFeildScreen(),
                          ));
                        },
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style!
                            .copyWith(
                                backgroundColor: const WidgetStatePropertyAll(
                                    CColors.secondaryColor)),
                        child: const Text('Send Reset Password'),
                      )),
                ],
              ),
            )
                    ],
                  ),
          )),
    );
  }
}
