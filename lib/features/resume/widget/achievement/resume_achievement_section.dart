import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/achievement/resume_achievement_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeAchievementSection extends StatelessWidget {
  const ResumeAchievementSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Achievement'),
        const SizedBox(height: CSizes.md),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              const SizedBox(height: CSizes.xxs),
          itemCount: 1,
          itemBuilder: (context, index) => ResumeAchievementDetailsListWidget(
            width: width,
            title: "First Achievement",
            job: "Asian Achievement",
            date: "01 Mar 2013 ",
            description:
                "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
          ),
        ),
      ],
    );
  }
}
