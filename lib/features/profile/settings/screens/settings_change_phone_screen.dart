import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/settings_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class SettingsChangePhoneScreen extends StatefulWidget {
  const SettingsChangePhoneScreen({super.key});

  @override
  State<SettingsChangePhoneScreen> createState() =>
      _SettingsChangePhoneScreenState();
}

class _SettingsChangePhoneScreenState extends State<SettingsChangePhoneScreen> {
  final TextEditingController oPhoneCTRL = TextEditingController();
  final TextEditingController newPhoneCTRL = TextEditingController();
  final TextEditingController otpCTRL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      backgroundColor: CColors.primaryColor,
      appBar: CAppbar(
        showBackArrow: true,
        title: Text(
          'Change Phone Number',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
      ),
      body: Column(
        children: [
          const Divider(color: CColors.secondaryColor),
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                SettingsTextFeild(
                  width: width,
                  controller: oPhoneCTRL,
                  hintText: "Current Phone Number",
                  icon: Icons.phone,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),
                SettingsTextFeild(
                  width: width,
                  controller: newPhoneCTRL,
                  hintText: "New Phone Number",
                  icon: Icons.phone,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),
                SettingsTextFeild(
                  width: width,
                  controller: otpCTRL,
                  hintText: "OTP Code",
                  icon: Icons.phone,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style:
                        Theme.of(context).outlinedButtonTheme.style!.copyWith(),
                    onPressed: () {
                      // showDialog(
                      //   barrierDismissible: false,
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return SettingDialogWidget(
                      //         title: "Change Password",
                      //         subTitle: "Are you sure to change password",
                      //         height: height,
                      //         width: width);
                      //   },
                      // );
                    },
                    child: const Text(
                      'Send OTP ',
                      style: TextStyle(color: CColors.whiteColor),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
