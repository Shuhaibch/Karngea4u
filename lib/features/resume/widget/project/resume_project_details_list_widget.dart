import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_icon_text_row_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_title_divider_widget.dart';

class ResumeProjectDetailsListWidget extends StatelessWidget {
  const ResumeProjectDetailsListWidget({
    super.key,
    required this.width,
    required this.title,
    required this.job,
    required this.date,
    required this.description,
  });

  final double width;
  final String title, job, date, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeTitleWithDviderWidget(title: title),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: job,
          isHead: true,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.calendar,
          title: date,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.note_1,
          title: description,
        ),
        const SizedBox(height: CSizes.xxs),
      ],
    );
  }
}
