import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class JobProfileScreen extends StatelessWidget {
  const JobProfileScreen({super.key, required this.controller});
  final MotionTabBarController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("JOb profile"),),
    );
  }
}
