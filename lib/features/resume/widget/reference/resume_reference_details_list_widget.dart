import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_icon_text_row_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_title_divider_widget.dart';

class ResumeReferenceDetailsListWidget extends StatelessWidget {
  const ResumeReferenceDetailsListWidget({
    super.key,
    required this.width,
    required this.title,
    required this.name,
    required this.phone,
    required this.role,
    required this.work,
    required this.mail,
  });

  final double width;
  final String title, name, phone, role, work, mail;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeTitleWithDviderWidget(title: title),
        ResumeIconTextRowWidget(
            width: width,
            icon: Iconsax.user_tick_copy,
            title: name,
            isHead: true),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Icons.phone,
          title: phone,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: role,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.building,
          title: work,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Icons.mail,
          title: mail,
        ),
      ],
    );
  }
}
