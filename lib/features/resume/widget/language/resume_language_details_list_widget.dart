import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_icon_text_row_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_title_divider_widget.dart';

class ResumeLanguageDetailsListWidget extends StatelessWidget {
  const ResumeLanguageDetailsListWidget({
    super.key,
    required this.width,
    required this.title,
    required this.language,
    required this.hearing,
    required this.writting,
    required this.speaking,
  });

  final double width;
  final String title, language, hearing, writting, speaking;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeTitleWithDviderWidget(title: title),
        ResumeIconTextRowWidget(
            width: width,
            icon: Iconsax.translate,
            title: language,
            isHead: true),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Icons.headphones,
          title: hearing,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.note_2,
          title: writting,
        ),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Icons.mood_outlined,
          title: speaking,
        ),
       
      ],
    );
  }
}
