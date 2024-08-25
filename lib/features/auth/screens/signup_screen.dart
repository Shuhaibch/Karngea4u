import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/auth_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/core/utils/validators/validators.dart';
import 'package:karngea4u/features/auth/screens/login_screen.dart';
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
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  bool visible = true;
  bool whatsApp = true;
  bool telegram = true;
  bool news = true;
  bool termsAndConditions = true;

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
                child: Form(
                  key: signUpFormKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .18,
                      ),
                      //* F Name
                      AuthTextFormFeild(
                          icon: Iconsax.user,
                          controller: firstNameCTRL,
                          validator: (value) =>
                              CValidator.validateEmptyText("First Name", value),
                          hintText: "First Name"),
                      const SizedBox(height: CSizes.spaceBtwInputFeild),

                      //* M Name
                      AuthTextFormFeild(
                          icon: Iconsax.user,
                          controller: middleNameCTRL,
                          validator: (value) => CValidator.validateEmptyText(
                              "Middle Name", value),
                          hintText: "Middle Name"),
                      const SizedBox(height: CSizes.spaceBtwInputFeild),

                      //* L Name
                      AuthTextFormFeild(
                          icon: Iconsax.user,
                          controller: lastNameCTRL,
                          validator: (value) =>
                              CValidator.validateEmptyText("Last Name", value),
                          hintText: "Last Name"),
                      const SizedBox(height: CSizes.spaceBtwInputFeild),

                      //* Email
                      AuthTextFormFeild(
                          icon: Icons.email_outlined,
                          controller: emailCTRL,
                          validator: (value) => CValidator.validateEmail(value),
                          hintText: "Email"),
                      const SizedBox(height: CSizes.spaceBtwInputFeild),

                      //* Password
                      AuthTextFormFeild(
                        icon: Icons.lock_outline,
                        controller: passwordCTRL,
                        hintText: "Password",
                        validator: (value) =>
                            CValidator.validatePassword(value),
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
                        validator: (value) =>
                            CValidator.validatePassword(value),
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
                          validator: (value) =>
                              CValidator.validatePhoneNumber(value),
                          controller: mobileCTRL,
                          hintText: "Mobile"),
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
                                value: telegram,
                                onChanged: (value) {
                                  setState(() {
                                    telegram = value!;
                                  });
                                },
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
                                value: whatsApp,
                                onChanged: (value) {
                                  setState(() {
                                    whatsApp = value!;
                                  });
                                },
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
                                value: news,
                                onChanged: (value) {
                                  setState(() {
                                    news = value!;
                                  });
                                },
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
                                value: termsAndConditions,
                                onChanged: (value) {
                                  setState(() {
                                    termsAndConditions = value!;
                                  });
                                },
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
                              onPressed: () {
                                if (signUpFormKey.currentState!.validate()) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                      (Route<dynamic> route) => false);
                                }
                              },
                              child: const Text('Register')))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
