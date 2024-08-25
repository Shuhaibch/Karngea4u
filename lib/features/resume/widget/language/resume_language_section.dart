import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/language/resume_language_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeLanguageSection extends StatelessWidget {
  const ResumeLanguageSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Languages'),
        const SizedBox(height: CSizes.md),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              const SizedBox(height: CSizes.xxs),
          itemCount: 1,
          itemBuilder: (context, index) => ResumeLanguageDetailsListWidget(
            width: width,
            title: "First Languages",
            language: "English",
            hearing: "Accounting",
            writting: "Norton University",
            speaking: "12 Dec 2012  -  12 Jan 2016",
          ),
        ),
      ],
    );
  }
}
