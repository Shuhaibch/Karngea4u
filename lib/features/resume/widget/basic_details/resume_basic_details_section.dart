import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

import 'resume_basic_details_row_widget.dart';

class ResumeBasicDetailSection extends StatelessWidget {
  const ResumeBasicDetailSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Basic Details'),
        const SizedBox(height: CSizes.spaceBtwItem),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: "Experience",
          subTitle: "2 Years",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Iconsax.calendar_2,
          title: "Date Of Birth",
          subTitle: "29 Dec 1994",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Icons.male_sharp,
          title: "Gender",
          subTitle: "Female",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Icons.family_restroom,
          title: "Martial Status",
          subTitle: "Married",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Iconsax.money,
          title: "Current Salary",
          subTitle: "250 USD",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Iconsax.money,
          title: "Expectation Salary",
          subTitle: "400 USD",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Iconsax.card,
          title: "Nationality",
          subTitle: "Khmer",
        ),
        ResumeBasicDetailsRowWidget(
          width: width,
          icon: Iconsax.briefcase,
          title: "Profile Summary",
          subTitle:
              "Highly skilled developers shouldn’t have too many problems.However – Securing a role at a top company is no easy task.You see, you’re competing with hundreds of other skilled developers.",
          showDivider: false,
        ),
      ],
    );
  }
}
