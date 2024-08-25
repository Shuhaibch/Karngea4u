import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_icon_text_row_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_title_divider_widget.dart';

class ResumeEducationDetailsListWidget extends StatelessWidget {
  const ResumeEducationDetailsListWidget({
    super.key,
    required this.width,
    required this.title,
    required this.head,
    required this.role,
    required this.date,
    required this.work,
    required this.place,
    required this.mark,
  });

  final double width;
  final String title, head, role, date, work, place, mark;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeTitleWithDviderWidget(title: title),
        ResumeIconTextRowWidget(
            width: width, icon: Iconsax.briefcase, title: head, isHead: true),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: role,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: place,
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
          icon: Iconsax.briefcase,
          title: work,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: mark,
        ),
      ],
    );
  }
}
