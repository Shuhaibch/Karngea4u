import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';
import 'package:karngea4u/features/resume/widget/education/resume_eduction_details_list_widget.dart';

class ResumeEdicationSection extends StatelessWidget {
  const ResumeEdicationSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Education'),
        const SizedBox(height: CSizes.md),
        ResumeEducationDetailsListWidget(
          width: width,
          title: "First Education",
          head: "Master",
          role: "Accounting",
          date: "Norton University",
          work: "12 Dec 2012  -  12 Jan 2016",
          place: "Accountant",
          mark: "GPA   3",
        ),
        const SizedBox(height: CSizes.md),
        ResumeEducationDetailsListWidget(
          width: width,
          title: "Second Education",
          head: "Master",
          role: "Accounting",
          date: "Norton University",
          work: "12 Dec 2012  -  12 Jan 2016",
          place: "Accountant",
          mark: "GPA   3",
        ),
      ],
    );
  }
}
