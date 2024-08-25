import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';
import 'package:karngea4u/features/resume/widget/video/resume_video_details_list_widget.dart';

class ResumeVideoSection extends StatelessWidget {
  const ResumeVideoSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: CSizes.md),
          child: ResumeContainerHeadWidget(title: 'Portfolio'),
        ),
        const SizedBox(height: CSizes.md),
        Padding(
          padding: const EdgeInsets.only(left: CSizes.md),
          child: ResumeVideoDetailsListWidget(width: width),
        )
      ],
    );
  }
}
