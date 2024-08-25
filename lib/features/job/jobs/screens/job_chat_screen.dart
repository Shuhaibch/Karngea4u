import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class JobChatScreen extends StatelessWidget {
  const JobChatScreen({super.key, required this.controller});
  final MotionTabBarController controller;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Chat"),
    );
  }
}