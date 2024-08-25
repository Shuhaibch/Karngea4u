import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/job/jobs/screens/job_chat_screen.dart';
import 'package:karngea4u/features/job/jobs/screens/job_filter_screen.dart';
import 'package:karngea4u/features/job/jobs/screens/job_profile_screen.dart';
import 'package:karngea4u/features/job/jobs/screens/job_search_screen.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class JobHomeScreen extends StatefulWidget {
  const JobHomeScreen({super.key});

  @override
  State<JobHomeScreen> createState() => _JobHomeScreenState();
}

class _JobHomeScreenState extends State<JobHomeScreen>
    with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showDivider: false,
        backgroungColor: CColors.primaryColor,
        iconColor: CColors.whiteColor,
        showBackArrow: true,
        centerTitle: true,
        padding: 0,
        title: Text(
          'JOBS',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const JobFilterScreen(),
                ));
              },
              child: const Icon(
                Iconsax.sort,
                color: CColors.whiteColor,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        controller:
            _motionTabBarController, // Add this controller if you need to change your tab programmatically
        initialSelectedTab: "Home",
        useSafeArea: true, // default: true, apply safe area wrapper
        labels: const ["Chat", "Home", "Profile"],
        icons: const [
          Icons.chat_bubble,
          Icons.home,
          Icons.people_alt,
        ],
        // Icons.dashboard,

        // optional badges, length must be same with labels

        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: CColors.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: CColors.whiteColor,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: CColors.whiteColor,
        tabIconSelectedColor: CColors.primaryColor,
        tabBarColor: CColors.primaryColor,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics:
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _motionTabBarController,
        children: [
          JobChatScreen(controller: _motionTabBarController!),
          JobSearchScreen(
              width: width,
              height: height,
              controller: _motionTabBarController!),
          JobProfileScreen(controller: _motionTabBarController!),
        ],
      ),
    );
  }
}
