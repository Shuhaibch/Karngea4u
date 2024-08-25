import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/drop_down/drop_down_widget.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/cv_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvLanguagesTextFormScreen extends StatefulWidget {
  const CvLanguagesTextFormScreen({super.key});

  @override
  State<CvLanguagesTextFormScreen> createState() =>
      _CvLanguagesTextFormScreenState();
}

class _CvLanguagesTextFormScreenState extends State<CvLanguagesTextFormScreen> {
  String? listeningValue;
  String? writtingValue;
  String? speakingValue;
  final TextEditingController languageCTRL = TextEditingController();

  double skillLevel = 0;
  @override
  void dispose() {
    super.dispose();
    listeningValue = null;
    writtingValue = null;
    speakingValue = null;
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
            Text('LANGUAGES', style: Theme.of(context).textTheme.titleMedium!),
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
                controller: languageCTRL,
                hintText: "Language",
                icon: Iconsax.language_circle,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Iconsax.headphone,
                  hintText: 'Select Listening',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: listeningValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      listeningValue = newValue!;
                    });
                  },
                  items: CDummyData.languageSkillsList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Iconsax.pen_add,
                  hintText: 'Select Writing',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: writtingValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      writtingValue = newValue!;
                    });
                  },
                  items: CDummyData.languageSkillsList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Icons.noise_aware,
                  hintText: 'Select Speaking',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: speakingValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      speakingValue = newValue!;
                    });
                  },
                  items: CDummyData.languageSkillsList()),
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
}
