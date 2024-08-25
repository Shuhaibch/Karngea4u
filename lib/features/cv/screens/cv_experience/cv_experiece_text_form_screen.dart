import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/cv_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvExperienceTextFormScreen extends StatefulWidget {
  const CvExperienceTextFormScreen({super.key});

  @override
  State<CvExperienceTextFormScreen> createState() =>
      _CvExperienceTextFormScreenState();
}

class _CvExperienceTextFormScreenState
    extends State<CvExperienceTextFormScreen> {
  TextEditingController fromDateCTRL = TextEditingController();
  TextEditingController toDateCTRL = TextEditingController();
  TextEditingController descriptionCTRL = TextEditingController();
  TextEditingController jobTitleCTRL = TextEditingController();
  TextEditingController jobCompanyCTRL = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    fromDateCTRL.dispose();
    descriptionCTRL.dispose();
    toDateCTRL.dispose();
    jobCompanyCTRL.dispose();
    jobTitleCTRL.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        backgroungColor: CColors.whiteColor,
        showBackArrow: true,
        iconColor: CColors.primaryColor,
        title:
            Text('EXPERIENCE', style: Theme.of(context).textTheme.titleMedium!),
        dividerColor: CColors.primaryColor,
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
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              CVTextFormFeild(
                controller: jobTitleCTRL,
                hintText: "Job Title",
                icon: Iconsax.briefcase,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: jobCompanyCTRL,
                hintText: "Company",
                icon: Iconsax.building,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              Row(
                children: [
                  Expanded(
                    child: CVTextFormFeild(
                      controller: fromDateCTRL,
                      hintText: "From",
                      isReadOnly: true,
                      icon: Iconsax.calendar,
                      onTap: () {
                        selectDate(context, fromDateCTRL);
                      },
                    ),
                  ),
                  const SizedBox(width: CSizes.sm),
                  Expanded(
                    child: CVTextFormFeild(
                      controller: toDateCTRL,
                      hintText: "TO",
                      isReadOnly: true,
                      icon: Iconsax.calendar,
                      onTap: () {
                        selectDate(context, toDateCTRL);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: descriptionCTRL,
                maxLine: null,
                hintText: "Description",
                icon: Iconsax.note_text,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: height * .055,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: CColors.secondaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Update",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: CColors.textWhiteColor),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: CColors.primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Next",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: CColors.textWhiteColor),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }
}
