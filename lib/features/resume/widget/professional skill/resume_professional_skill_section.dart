import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/professional%20skill/resume_professional_skill_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeProfessionalSkillsSection extends StatelessWidget {
  const ResumeProfessionalSkillsSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Professional Skill'),
        const SizedBox(height: CSizes.md),
        ResumeProfessionalSkillsDetailsListWidget(
          width: width,
          title: "First Professional Skill",
          job: "Web Design",
          experiece: "2 years",
        ),
        const SizedBox(height: CSizes.sm),
        ResumeProfessionalSkillsDetailsListWidget(
          width: width,
          title: "Second Professional Skill",
          job: "Web Design",
          experiece: "2 years",
        )
      ],
    );
  }
}
