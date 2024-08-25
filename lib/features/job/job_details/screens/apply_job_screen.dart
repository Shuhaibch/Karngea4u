import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/container/circular_container.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/title_sub_title_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/job_details/widgets/apply_job_cover_letter_textformfeild_widget.dart';
import 'package:karngea4u/features/job/job_details/widgets/apply_job_resume_radio_button.dart';
import 'package:karngea4u/features/job/jobs/widget/job_filter_radio_button_widget.dart';

class ApplyJobScreen extends StatefulWidget {
  const ApplyJobScreen({super.key});

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
  final TextEditingController cSalaryCTRL = TextEditingController();
  final TextEditingController eSalaryCTRL = TextEditingController();
  final TextEditingController coverLetterCTRL = TextEditingController();
  String? coverLetterValue = "Cover Letter";
  String? resumeValue;
  bool uploadCoverLetter = false;
  File? cvFile, coverLetterFile;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        iconColor: CColors.primaryColor,
        title: Text(
          'APPLY JOB',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              height: height * .02,
              width: width * .08,
              image: const AssetImage(
                CImageString.appLogo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ApplyJobTextFormFeild(
                      width: width,
                      controller: cSalaryCTRL,
                      hintText: "",
                      keyboardType: TextInputType.number,
                      title: 'Current Salary',
                    ),
                  ),
                  const SizedBox(width: CSizes.md),
                  Expanded(
                    child: ApplyJobTextFormFeild(
                      width: width,
                      controller: eSalaryCTRL,
                      hintText: "",
                      keyboardType: TextInputType.number,
                      title: 'Expeted Salary',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: CSizes.spaceBtwItem),
              Text('Select Resume',
                  style: Theme.of(context).textTheme.headlineSmall!),
              Row(
                children: [
                  Expanded(
                    child: JobRadioButtonWidget(
                      value: 'View Default CV',
                      iconColor: CColors.blackColor,
                      textColor: CColors.secondaryColor,
                      groupValue: resumeValue,
                      onChanged: (value) {
                        setState(() {
                          resumeValue = value;
                        });
                      },
                      title: "View Default CV",
                    ),
                  ),
                  ApplyJobResumeRadioButtonWidget(
                    groupValue: resumeValue,
                    width: width,
                    onChanged: (value) async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();

                      if (result != null) {
                        cvFile = File(result.files.single.path!);
                      } else {
                        // User canceled the picker
                      }
                      setState(() {
                        resumeValue = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: JobRadioButtonWidget(
                      value: 'Cover Letter',
                      iconColor: CColors.blackColor,
                      textColor: CColors.blackColor,
                      groupValue: coverLetterValue,
                      onChanged: (value) {
                        setState(() {
                          coverLetterValue = value;
                          uploadCoverLetter = false;
                        });
                      },
                      title: "Cover Letter",
                    ),
                  ),
                  Expanded(
                    child: JobRadioButtonWidget(
                      value: 'Upload Cover Letter',
                      iconColor: CColors.blackColor,
                      textColor: CColors.blackColor,
                      groupValue: coverLetterValue,
                      onChanged: (value) {
                        setState(() {
                          coverLetterValue = value;
                          uploadCoverLetter = true;
                        });
                      },
                      title: 'Upload Cover Letter',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: CSizes.spaceBtwItem),
              uploadCoverLetter
                  ? InkWell(
                      onTap: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();

                        if (result != null) {
                          cvFile = File(result.files.single.path!);
                        } else {
                          // User canceled the picker
                        }
                      },
                      child: CRoundedContainer(
                        borderColor: CColors.darkGreyColor,
                        showBorder: true,
                        radius: 8,
                        padding: const EdgeInsets.symmetric(
                            vertical: CSizes.xs, horizontal: CSizes.sm),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CCircularContainer(
                              width: width * .03,
                              height: height * .03,
                              padding: CSizes.xs,
                              backgroundColor: CColors.secondaryColor,
                              child: Icon(Icons.camera_alt_outlined,
                                  size: width * .02, color: CColors.blackColor),
                            ),
                            const SizedBox(width: CSizes.xxs),
                            Text(
                              "Upload CV",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: CColors.blackColor,
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ApplyJobCoverLetterTextFormFeildWidget(
                      controller: coverLetterCTRL),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: height * .055,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: CColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              "Apply Job",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: CColors.textWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
