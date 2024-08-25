import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/certificates/resume_certificates_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeCerificatesSection extends StatelessWidget {
  const ResumeCerificatesSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Certificates / Licenses'),
        const SizedBox(height: CSizes.md),
        ResumeCerificatesDetailsListWidget(
          width: width,
          title: "First Certificates",
          job: "Asian Certificates",
          date: "01 Mar 2013 - 04 Mar 2014  ",
          description:
              "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
        ),
        const SizedBox(height: CSizes.sm),
        ResumeCerificatesDetailsListWidget(
          width: width,
          title: "Second Certificates",
          job: "Asian Certificates",
          date: "01 Mar 2013 - 04 Mar 2014  ",
          description:
              "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
        )
      ],
    );
  }
}
