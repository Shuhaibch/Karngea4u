import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/home/widgets/home_drawer_profile_image_widget.dart';
import 'package:karngea4u/features/home/widgets/home_drawer_title_widget.dart';
import 'package:karngea4u/features/profile/language/screen/language_screen.dart';
import 'package:karngea4u/features/profile/settings/screens/settings_screen.dart';

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
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.hierarchy_square,
              title: "My Job History",
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.note_favorite,
              title: "My Favorite Jobs",
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.building,
              title: "My Following",
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Iconsax.message,
              title: "Message",
            ),
            HomeDrawerTileWidget(
              width: width,
              icon: Icons.more_horiz_outlined,
              title: "Other App",
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
