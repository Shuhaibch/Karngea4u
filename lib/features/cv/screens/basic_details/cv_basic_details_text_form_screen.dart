import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/drop_down/drop_down_widget.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/cv_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/cv/screens/basic_details/cv_basic_details_screen.dart';

class CvBasicDetailsTextFormScreen extends StatefulWidget {
  const CvBasicDetailsTextFormScreen({super.key});

  @override
  State<CvBasicDetailsTextFormScreen> createState() =>
      _CvBasicDetailsTextFormScreenState();
}

class _CvBasicDetailsTextFormScreenState
    extends State<CvBasicDetailsTextFormScreen> {
  TextEditingController dOBCTRL = TextEditingController();
  TextEditingController cSalaryCTRL = TextEditingController();
  TextEditingController eSalaryCTRL = TextEditingController();
  TextEditingController summaryCTRL = TextEditingController();
  String? cvEXPValue;
  String? sexValue;
  String? materialStausValue;
  String? nationalityValue;
  DateTime? selectedDOB;
  @override
  void dispose() {
    super.dispose();
    cvEXPValue = null;
    dOBCTRL.dispose();
    cSalaryCTRL.dispose();
    eSalaryCTRL.dispose();
    summaryCTRL.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        iconColor: CColors.primaryColor,
        title: Text(
          'BASIC DETAIL',
          style: Theme.of(context).textTheme.titleMedium,
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
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              CDropDownFeild(
                  icon: Iconsax.briefcase,
                  hintText: 'Experience',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: cvEXPValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      cvEXPValue = newValue!;
                    });
                  },
                  items: CDummyData.cvExpericeList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: dOBCTRL,
                hintText: "Date of birth",
                isReadOnly: true,
                icon: Iconsax.calendar,
                onTap: () {
                  selectDate(context, dOBCTRL);
                },
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Icons.male_sharp,
                  hintText: 'Gender',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: sexValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      sexValue = newValue!;
                    });
                  },
                  items: CDummyData.genderList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Icons.family_restroom,
                  hintText: 'Martial Status',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: materialStausValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      materialStausValue = newValue!;
                    });
                  },
                  items: CDummyData.maritalStatusesList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: cSalaryCTRL,
                hintText: "Current Salary",
                suffixIcon: Padding(
                  padding: EdgeInsets.only(top: height * .015),
                  child: const Text(
                    "USD",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: CColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                icon: Iconsax.money,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: eSalaryCTRL,
                hintText: "Expectation Salary",
                suffixIcon: Padding(
                  padding: EdgeInsets.only(top: height * .015),
                  child: const Text(
                    "USD",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: CColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                icon: Iconsax.money,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CDropDownFeild(
                  icon: Iconsax.card,
                  hintText: 'Nationality',
                  isBlogScreen: true,
                  dropdownTextColor: CColors.primaryColor,
                  hintColor: CColors.darkGreyColor,
                  dropdownColor: CColors.whiteColor,
                  borderColor: CColors.darkerGreyColor,
                  textColor: CColors.primaryColor,
                  value: nationalityValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      nationalityValue = newValue!;
                    });
                  },
                  items: CDummyData.nationalityList()),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                maxLine: null,
                controller: summaryCTRL,
                hintText: "Profile Summary",
                icon: Iconsax.user_tick,
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
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CvBasicDetailsScreen(),
                  ));
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
        selectedDOB = picked;
        controller.text = DateFormat('dd-MM-yyyy').format(picked);
        log(controller.text);
      });
    }
  }
}
