import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/settings_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/profile/settings/widgets/settings_dialog_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController fNameCTRL = TextEditingController();
  final TextEditingController lNameCTRL = TextEditingController();
  final TextEditingController mNameCTRL = TextEditingController();
  final TextEditingController locationCTRL = TextEditingController();
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
          'Edit Profile',
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
                  controller: fNameCTRL,
                  hintText: "First Name",
                  icon: Iconsax.user,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),
                SettingsTextFeild(
                  width: width,
                  controller: mNameCTRL,
                  hintText: "Middle Name",
                  icon: Iconsax.user,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),
                SettingsTextFeild(
                  width: width,
                  controller: lNameCTRL,
                  hintText: "Last Name",
                  icon: Iconsax.user,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),
                SettingsTextFeild(
                  width: width,
                  controller: locationCTRL,
                  hintText: "Location",
                  icon: Iconsax.location,
                ),
                const SizedBox(height: CSizes.spaceBtwInputFeild),

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
                          fillColor:
                              const WidgetStatePropertyAll(CColors.whiteColor),
                          value: isTelegram,
                          onChanged: (value) {
                            setState(() {
                              isTelegram = value!;
                            });
                          },
                        ),
                        const Image(
                          height: 25,
                          image: AssetImage(
                            CImageString.telegram,
                          ),
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
                          fillColor:
                              const WidgetStatePropertyAll(CColors.whiteColor),
                          value: isWhatsApp,
                          onChanged: (value) {
                            setState(() {
                              isWhatsApp = value!;
                            });
                          },
                        ),
                        const Image(
                          height: 25,
                          image: AssetImage(
                            CImageString.whatsapp,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: CSizes.spaceBtwSection),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style:
                        Theme.of(context).outlinedButtonTheme.style!.copyWith(),
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return SettingDialogWidget(
                              subTitle: 'Are you sure to save the profile?',
                              title: "Edit Profile",
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
    );
  }
}
