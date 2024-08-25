import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/cv_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvReferenceTextFormScreen extends StatefulWidget {
  const CvReferenceTextFormScreen({super.key});

  @override
  State<CvReferenceTextFormScreen> createState() =>
      _CvReferenceTextFormScreenState();
}

class _CvReferenceTextFormScreenState extends State<CvReferenceTextFormScreen> {
  final TextEditingController nameCTRL = TextEditingController();
  final TextEditingController phoneCTRL = TextEditingController();
  final TextEditingController positionCTRL = TextEditingController();
  final TextEditingController companyCTRL = TextEditingController();
  final TextEditingController emailCTRL = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    nameCTRL.dispose();
    phoneCTRL.dispose();
    positionCTRL.dispose();
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
            Text('REFERENCES', style: Theme.of(context).textTheme.titleMedium!),
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
                controller: nameCTRL,
                hintText: "Name",
                icon: Icons.person_2_outlined,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: phoneCTRL,
                hintText: "Phone",
                keyboardType: TextInputType.phone,
                icon: Icons.phone,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: positionCTRL,
                hintText: "Position",
                icon: Iconsax.briefcase,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: companyCTRL,
                hintText: "Company",
                icon: Iconsax.building,
              ),
              const SizedBox(height: CSizes.spaceBtwInputFeild),
              CVTextFormFeild(
                controller: emailCTRL,
                hintText: "Email",
                icon: Icons.email_outlined,
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
}
