import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/project/resume_project_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeProjectSection extends StatelessWidget {
  const ResumeProjectSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Projects'),
        const SizedBox(height: CSizes.md),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              const SizedBox(height: CSizes.xxs),
          itemCount: 1,
          itemBuilder: (context, index) => ResumeProjectDetailsListWidget(
            width: width,
            title: "First Projects",
            job: "Asian Projects",
            date: "01 Mar 2013 - 04 Mar 2014  ",
            description:
                "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
          ),
        ),
      ],
    );
  }
}
