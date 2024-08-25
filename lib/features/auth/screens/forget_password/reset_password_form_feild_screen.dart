import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/auth_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/screens/login_screen.dart';
import 'package:karngea4u/features/auth/widget/login_backgournd_stack.dart';

class ResetPasswordFormFeildScreen extends StatefulWidget {
  const ResetPasswordFormFeildScreen({super.key});

  @override
  State<ResetPasswordFormFeildScreen> createState() =>
      _ResetPasswordFormFeildScreenState();
}

class _ResetPasswordFormFeildScreenState
    extends State<ResetPasswordFormFeildScreen> {
  final TextEditingController passwordCTRL = TextEditingController();
  final TextEditingController cPasswordCTRL = TextEditingController();
  bool visible = false;
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
                  //* Password
                  AuthTextFormFeild(
                    icon: Icons.lock_outline,
                    controller: passwordCTRL,
                    hintText: "Password",
                    obscureText: visible ? true : false,
                    suffixIcon: visible
                        ? Icons.remove_red_eye
                        : Icons.visibility_off_rounded,
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
            
                  //* OTP
                  //* Password
                  AuthTextFormFeild(
                    icon: Icons.lock_outline,
                    controller: passwordCTRL,
                    hintText: "Password Confirmation",
                    obscureText: visible ? true : false,
                    suffixIcon: visible
                        ? Icons.remove_red_eye
                        : Icons.visibility_off_rounded,
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                  ),
                  const SizedBox(height: CSizes.spaceBtwSection),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                              (Route<dynamic> route) => false);
                        },
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style!
                            .copyWith(
                                backgroundColor: const WidgetStatePropertyAll(
                                    CColors.secondaryColor)),
                        child: const Text('Save'),
                      )),
            
                  //* Login
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                              (Route<dynamic> route) => false);
                        },
                        child: Text(
                          'Login?',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
                    ],
                  ),
          )),
    );
  }
}
