import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/auth/screens/login_screen.dart';
import 'package:karngea4u/features/home/widgets/home_drawer_profile_image_widget.dart';
import 'package:karngea4u/features/home/widgets/home_drawer_title_widget.dart';
import 'package:karngea4u/features/job/my_favorite_job/screens/my_favorite_job_home_screen.dart';
import 'package:karngea4u/features/job/my_following/screens/my_following_screen.dart';
import 'package:karngea4u/features/job/my_job_history/screens/my_job_history_screen.dart';
import 'package:karngea4u/features/message/screens/message_home_screen.dart';
import 'package:karngea4u/features/other_app/screens/other_app_screen.dart';
import 'package:karngea4u/features/profile/language/screen/language_screen.dart';
import 'package:karngea4u/features/profile/settings/screens/settings_screen.dart';
import 'package:karngea4u/features/profile/settings/widgets/settings_dialog_widget.dart';
import 'package:karngea4u/features/resume/screens/resume_home_screen.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Drawer(
      backgroundColor: CColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * .05),
            HomeDrawerProfileImageWidget(height: height),
            const SizedBox(height: CSizes.sm),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
              child: Text(
                "User Name",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: CColors.whiteColor),
              ),
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.user,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ));
              },
              title: "Settings",
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Icons.settings_applications,
              title: "My Resume",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ResumeHomeScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.hierarchy_square,
              title: "My Job History",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MyJobScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.note_favorite,
              title: "My Favorite Jobs",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MyFavoriteJobHomeScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.building,
              title: "My Following",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MyFollowingScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.message,
              title: "Message",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MessageHomeScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Icons.more_horiz_outlined,
              title: "Other App",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtherAppScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.language_square,
              title: "Language",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LanguageScreen(),
                ));
              },
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.logout_1,
              title: "Logout",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => SettingDialogWidget(
                        onPressed: () =>
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                                (Route<dynamic> route) => false),
                        height: height,
                        width: width,
                        title: 'Log Out',
                        subTitle: "Do you want to logout"));
              },
            ),
            const Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
              child: Text(
                'Version 1.0.0',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: CColors.whiteColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
