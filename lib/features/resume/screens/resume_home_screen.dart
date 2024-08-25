import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/achievement/resume_achievement_section.dart';
import 'package:karngea4u/features/resume/widget/attached_file/resume_attached_file_section.dart';
import 'package:karngea4u/features/resume/widget/award/resume_award_section.dart';
import 'package:karngea4u/features/resume/widget/basic_details/resume_basic_details_section.dart';
import 'package:karngea4u/features/resume/widget/certificates/resume_certificates_section.dart';
import 'package:karngea4u/features/resume/widget/education/resume_eduction_section.dart';
import 'package:karngea4u/features/resume/widget/experice/resume_experice_section.dart';
import 'package:karngea4u/features/resume/widget/language/resume_language_section.dart';
import 'package:karngea4u/features/resume/widget/member/resume_member_section.dart';
import 'package:karngea4u/features/resume/widget/portfolio/resume_portfolio_section.dart';
import 'package:karngea4u/features/resume/widget/professional%20skill/resume_professional_skill_section.dart';
import 'package:karngea4u/features/resume/widget/project/resume_project_section.dart';
import 'package:karngea4u/features/resume/widget/publication/resume_publication_section.dart';
import 'package:karngea4u/features/resume/widget/reference/resume_reference_section.dart';
import 'package:karngea4u/features/resume/widget/reserch/resume_research_section.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_head_image_container.dart';
import 'package:karngea4u/features/resume/widget/video/resume_video_section.dart';

class ResumeHomeScreen extends StatelessWidget {
  const ResumeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        backgroungColor: CColors.primaryColor,
        showDivider: false,
        iconColor: CColors.whiteColor,
        title: Text(
          'RESUME',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Iconsax.document_download,
              color: CColors.whiteColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(CSizes.md),
              child: Column(
                children: [
                  ResumeHeadImageContainerWidget(width: width, height: height),
                  const SizedBox(height: CSizes.spaceBtwItem),

                  //* Basic Details Section
                  ResumeBasicDetailSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Eduction Section
                  ResumeEdicationSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Experice Section
                  ResumeExpericeSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* poofessional Skills Section
                  ResumeProfessionalSkillsSection(width: width),
                ],
              ),
            ),
            //* Portfolio Section
            ResumePortfolioSection(width: width),
            const SizedBox(height: CSizes.spaceBtwInputFeild),

            //* Video Section
            ResumeVideoSection(width: width),

            Padding(
              padding: const EdgeInsets.all(CSizes.md),
              child: Column(
                children: [
                  //* Award Section
                  ResumeAwardSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Research section
                  ResumeResearchSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Certificates / Licenses Section
                  ResumeCerificatesSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Certificates / Licenses Section
                  ResumePublicationSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Member Section
                  ResumeMemberSection(width: width),
                ],
              ),
            ),
            //* File Section
            ResumeAttachedFileSection(width: width),

            Padding(
              padding: const EdgeInsets.all(CSizes.md),
              child: Column(
                children: [
                  //* Reference Section
                  ResumeReferenceSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Language Section
                  ResumeLanguageSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Project Section
                  ResumeProjectSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Achievement Section
                  ResumeAchievementSection(width: width),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),

                  //* Association Section
                  const ResumeContainerHeadWidget(title: 'Association'),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: CSizes.xl, top: CSizes.sm),
                    child: Text(
                        "Free Download Description 4 SVG vector file in monocolor and multicolor type for Sketch and Figma from Description 4 Vectors svg vector collection. Description 4 Vectors SVG vector ",
                        textAlign: TextAlign.left,
                        maxLines: null,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: CColors.darkerGreyColor)),
                  ),
                  const SizedBox(height: CSizes.md),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
