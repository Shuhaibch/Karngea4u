import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_icon_text_row_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_title_divider_widget.dart';

class ResumeProfessionalSkillsDetailsListWidget extends StatelessWidget {
  const ResumeProfessionalSkillsDetailsListWidget({
    super.key,
    required this.width,
    required this.title,
    required this.job,
    required this.experiece,
  });

  final double width;
  final String title, job, experiece;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeTitleWithDviderWidget(title: title),
        ResumeIconTextRowWidget(
            width: width, icon: Iconsax.briefcase, title: job, isHead: true),
        const SizedBox(height: CSizes.xxs),
        ResumeIconTextRowWidget(
          width: width,
          icon: Iconsax.calendar,
          title: experiece,
        ),
        const SizedBox(height: CSizes.xxs),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.graph, color: CColors.secondaryColor),
            Flexible(
              child: Column(
                children: [
                  Text("50%",
                      textAlign: TextAlign.left,
                      maxLines: null,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: CColors.darkerGreyColor, fontSize: 15)),
                  Row(
                    children: [
                      SizedBox(width: width * .02),
                      Flexible(
                        child: LinearProgressIndicator(
                          backgroundColor: CColors.primaryColor,
                          minHeight: width * .025,
                          value: .5,
                          valueColor: const AlwaysStoppedAnimation(
                              CColors.secondaryColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
