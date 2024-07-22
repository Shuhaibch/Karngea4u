import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/auth_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/widget/signup_background_stack_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailCTRL = TextEditingController();
  final TextEditingController passwordCTRL = TextEditingController();
  final TextEditingController cPasswordCTRL = TextEditingController();
  final TextEditingController firstNameCTRL = TextEditingController();
  final TextEditingController lastNameCTRL = TextEditingController();
  final TextEditingController middleNameCTRL = TextEditingController();
  final TextEditingController mobileCTRL = TextEditingController();
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SignUpBackgroundStackWidget(height: height, width: width),
              //* Password
              Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .18,
                    ),
                    //* F Name
                    AuthTextFormFeild(
                        icon: Iconsax.user,
                        controller: firstNameCTRL,
                        hintText: "First Name"),
                    const SizedBox(height: CSizes.spaceBtwInputFeild),

                    //* M Name
                    AuthTextFormFeild(
                        icon: Iconsax.user,
                        controller: middleNameCTRL,
                        hintText: "Middle Name"),
                    const SizedBox(height: CSizes.spaceBtwInputFeild),

                    //* L Name
                    AuthTextFormFeild(
                        icon: Iconsax.user,
                        controller: lastNameCTRL,
                        hintText: "Last Name"),
                    const SizedBox(height: CSizes.spaceBtwInputFeild),

                    //* Email
                    AuthTextFormFeild(
                        icon: Icons.email_outlined,
                        controller: emailCTRL,
                        hintText: "Email"),
                    const SizedBox(height: CSizes.spaceBtwInputFeild),

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
                    AuthTextFormFeild(
                      icon: Icons.lock_outline,
                      controller: cPasswordCTRL,
                      hintText: "Confirm Password",
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

                    //* Mobile
                    AuthTextFormFeild(
                        icon: Icons.phone_outlined,
                        controller: mobileCTRL,
                        hintText: "Mbile"),
                    const SizedBox(height: CSizes.sm),

                    //?  icon Row
                    Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              checkColor: CColors.primaryColor,
                              side: const BorderSide(
                                  color: CColors.primaryColor, width: 2),
                              activeColor: CColors.whiteColor,
                              fillColor: const WidgetStatePropertyAll(
                                  CColors.whiteColor),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Image(
                              height: 25,
                              // width: width * .25,
                              image: AssetImage(
                                CImageString.telegram,
                              ),
                              // width: width,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: CColors.primaryColor,
                              side: const BorderSide(
                                  color: CColors.primaryColor, width: 2),
                              activeColor: CColors.whiteColor,
                              fillColor: const WidgetStatePropertyAll(
                                  CColors.whiteColor),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Image(
                              height: 25,
                              // width: width * .25,
                              image: AssetImage(
                                CImageString.whatsapp,
                              ),
                              // width: width,
                              fit: BoxFit.cover,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              checkColor: CColors.primaryColor,
                              side: const BorderSide(
                                  color: CColors.primaryColor, width: 2),
                              activeColor: CColors.whiteColor,
                              fillColor: const WidgetStatePropertyAll(
                                  CColors.whiteColor),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text('Subcribe to the\nnews letter')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: CColors.primaryColor,
                              side: const BorderSide(
                                  color: CColors.primaryColor, width: 2),
                              activeColor: CColors.whiteColor,
                              fillColor: const WidgetStatePropertyAll(
                                  CColors.whiteColor),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text('I Accepts\nTerms of user')
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: CSizes.spaceBtwInputFeild),

                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Register')))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
