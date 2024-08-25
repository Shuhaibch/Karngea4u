import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/settings_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/profile/settings/widgets/settings_dialog_widget.dart';

class SettingsPasswordChangeScreen extends StatefulWidget {
  const SettingsPasswordChangeScreen({super.key});

  @override
  State<SettingsPasswordChangeScreen> createState() =>
      _SettingsPasswordChangeScreenState();
}

class _SettingsPasswordChangeScreenState
    extends State<SettingsPasswordChangeScreen> {
  final TextEditingController oPasswordCTRL = TextEditingController();
  final TextEditingController newPasswordCTRL = TextEditingController();
  final TextEditingController cNameCTRL = TextEditingController();
  bool isWhatsApp = false;
  bool isTelegram = false;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      backgroundColor: CColors.primaryColor,
      appBar: CAppbar(
        showBackArrow: true,
        title: Text(
          'Change Password',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        dividerColor: CColors.secondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  SettingsTextFeild(
                    width: width,
                    controller: oPasswordCTRL,
                    hintText: "Current Password",
                    icon: Icons.lock_outline,
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
                  SettingsTextFeild(
                    width: width,
                    controller: newPasswordCTRL,
                    hintText: "New Password",
                    icon: Icons.lock_outline,
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
                  SettingsTextFeild(
                    width: width,
                    controller: cNameCTRL,
                    hintText: "Password Confirmation",
                    icon: Icons.lock_outline,
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: Theme.of(context)
                          .outlinedButtonTheme
                          .style!
                          .copyWith(),
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return SettingDialogWidget(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                title: "Change Password",
                                subTitle: "Are you sure to change password",
                                height: height,
                                width: width);
                          },
                        );
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(color: CColors.whiteColor),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
