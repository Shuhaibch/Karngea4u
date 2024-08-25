import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/drop_down/drop_down_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvProSkillsTextFormScreen extends StatefulWidget {
  const CvProSkillsTextFormScreen({super.key});

  @override
  State<CvProSkillsTextFormScreen> createState() =>
      _CvProSkillsTextFormScreenState();
}

class _CvProSkillsTextFormScreenState extends State<CvProSkillsTextFormScreen> {
  String? skillValue;
  String? experieceValue;
  double skillLevel = 0;
  @override
  void dispose() {
    super.dispose();
    skillValue = null;
    experieceValue = null;
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
        title: Text('PROFESSIONAL SKILL',
            style: Theme.of(context).textTheme.titleMedium!),
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
              CDropDownFeild(
                  icon: Iconsax.briefcase,
                  hintText: 'Select Skill',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: skillValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      skillValue = newValue!;
                    });
                  },
                  items: CDummyData.skillList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Iconsax.watch_status,
                  hintText: 'Select Experience',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: experieceValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      experieceValue = newValue!;
                    });
                  },
                  items: CDummyData.cvExpericeList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.note_alt,
                    color: CColors.primaryColor,
                  ),
                  const SizedBox(width: CSizes.spaceBtwItem),
                  const Text("Skill Level"),
                  const SizedBox(width: CSizes.spaceBtwItem),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: height * .025,
                        width: width * .29,
                        child: Slider(
                          value: skillLevel,
                          activeColor: CColors.secondaryColor,
                          inactiveColor: CColors.primaryColor,
                          min: 0,
                          max: 100,
                          onChanged: (value) {
                            setState(() {
                              skillLevel = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        "${skillLevel.round()}%",
                        style: TextStyle(color: CColors.blackColor),
                      ),
                    ],
                  )
                ],
              )
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
