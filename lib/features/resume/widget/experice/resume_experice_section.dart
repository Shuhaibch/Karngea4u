import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/experice/resume_experience_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeExpericeSection extends StatelessWidget {
  const ResumeExpericeSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Experience'),
        const SizedBox(height: CSizes.md),
        ResumeExperienceDetailsListWidget(
          width: width,
          title: "First Experience",
          job: "Web Design",
          company: "Coco Company",
          date: "01 Mar 2013 - 04 Mar 2014  ",
          description:
              "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
        ),
        const SizedBox(height: CSizes.sm),
        ResumeExperienceDetailsListWidget(
          width: width,
          title: "Second Experience",
          job: "Web Design",
          company: "Coco Company",
          date: "01 Mar 2013 - 04 Mar 2014  ",
          description:
              "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
        )
      ],
    );
  }
}
