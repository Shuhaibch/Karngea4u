import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/profile/settings/screens/edit_profile.dart';
import 'package:karngea4u/features/profile/settings/screens/setting_password_change_screen.dart';
import 'package:karngea4u/features/profile/settings/screens/settings_change_email_screen.dart';
import 'package:karngea4u/features/profile/settings/screens/settings_change_phone_screen.dart';
import 'package:karngea4u/features/profile/settings/widgets/settings_tile_wdgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CColors.primaryColor,
        iconTheme: const IconThemeData(color: CColors.whiteColor),
      ),
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Container(
              width: width,
              color: CColors.primaryColor,
              height: height * .32,
              child: Text(
                "Settings",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: CColors.whiteColor,
                    ),
              ),
            ),
          ),

          //* White Feild
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * .05),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * .08),
                      child: CRoundedContainer(
                        backgroundColor: CColors.whiteColor,
                        child: Column(
                          children: [
                            SizedBox(height: height * .05),
                            SettingsTileWdgets(
                              width: width,
                              icon: Iconsax.user,
                              title: "Profile",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const EditProfileScreen(),
                                ));
                              },
                            ),
                            SettingsTileWdgets(
                              width: width,
                              icon: Icons.lock_person_outlined,
                              title: "Password",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const SettingsPasswordChangeScreen(),
                                ));
                              },
                            ),
                            SettingsTileWdgets(
                              width: width,
                              icon: Icons.email_outlined,
                              title: "Email",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const SettingsEmailChangeScreen(),
                                ));
                              },
                            ),
                            SettingsTileWdgets(
                              width: width,
                              icon: Icons.phone,
                              title: "Mobile",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const SettingsChangePhoneScreen(),
                                ));
                              },
                            ),
                            SettingsTileWdgets(
                              width: width,
                              icon: Icons.pin,
                              title: "Pin",
                            ),
                            SettingsTileWdgets(
                              width: width,
                              icon: Icons.face_outlined,
                              title: "Facial Recogintion",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CRoundedContainer(
                        padding: const EdgeInsets.all(15),
                        radius: 100,
                        borderColor: CColors.primaryColor,
                        borderWidth: height * .01,
                        showBorder: true,
                        child: Icon(
                          Iconsax.setting_2,
                          color: CColors.primaryColor,
                          size: width * .08,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
