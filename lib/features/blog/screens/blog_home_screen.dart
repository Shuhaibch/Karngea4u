import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/features/blog/screens/blog_search_screen.dart';
import 'package:karngea4u/features/job/jobs/screens/job_chat_screen.dart';
import 'package:karngea4u/features/job/jobs/screens/job_profile_screen.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class BlogHomeScreen extends StatefulWidget {
  const BlogHomeScreen({super.key});

  @override
  State<BlogHomeScreen> createState() => _BlogHomeScreenState();
}

class _BlogHomeScreenState extends State<BlogHomeScreen>
    with TickerProviderStateMixin {
  MotionTabBarController? _blogMotionTabBarController;

  @override
  void initState() {
    super.initState();
    _blogMotionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _blogMotionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: MotionTabBar(
        controller:
            _blogMotionTabBarController, // Add this controller if you need to change your tab programmatically
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
            _blogMotionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics:
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _blogMotionTabBarController,
        children: [
          JobChatScreen(controller: _blogMotionTabBarController!),
          BlogSearchScreen(
            controller: _blogMotionTabBarController!,
          ),
          JobProfileScreen(controller: _blogMotionTabBarController!),
        ],
      ),
    );
  }
}
