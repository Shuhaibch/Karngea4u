import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/auth_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/screens/forget_password/forget_password_button_screen.dart';
import 'package:karngea4u/features/auth/screens/signup_screen.dart';
import 'package:karngea4u/features/auth/widget/login_backgournd_stack.dart';
import 'package:karngea4u/features/home/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailCTRL = TextEditingController();
  final TextEditingController passwordCTRL = TextEditingController();
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
              LoginBackgoundStack(height: height, width: width),
              Positioned(
                top: height * .2,
                left: width * .2,
                child: Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .35,
                    ),

                    //* Email
                    AuthTextFormFeild(
                        icon: Icons.email,
                        controller: emailCTRL,
                        hintText: "Email"),
                    const SizedBox(height: CSizes.spaceBtwInputFeild),

                    //* Password
                    AuthTextFormFeild(
                      icon: Icons.lock,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordButtonScreen(),
                            ));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: CSizes.spaceBtwSection),

                    //* Buttons
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style!
                            .copyWith(
                                backgroundColor: const WidgetStatePropertyAll(
                                    CColors.secondaryColor)),
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(height: CSizes.spaceBtwSection),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: Theme.of(context)
                            .outlinedButtonTheme
                            .style!
                            .copyWith(),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: CColors.secondaryColor),
                        ),
                      ),
                    )
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
