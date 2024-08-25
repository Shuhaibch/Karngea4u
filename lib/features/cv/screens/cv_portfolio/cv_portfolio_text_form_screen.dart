import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:karngea4u/core/commen/image/image_handler.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/cv_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvPortfolioTextFormScreen extends StatefulWidget {
  const CvPortfolioTextFormScreen({super.key});

  @override
  State<CvPortfolioTextFormScreen> createState() =>
      _CvPortfolioTextFormScreenState();
}

class _CvPortfolioTextFormScreenState extends State<CvPortfolioTextFormScreen> {
  TextEditingController imageCTRL = TextEditingController();
  XFile? pickedFile;

  @override
  void dispose() {
    super.dispose();
    imageCTRL.dispose();
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
            Text('PORTFOLIO', style: Theme.of(context).textTheme.titleMedium!),
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
          child: CVTextFormFeild(
            controller: imageCTRL,
            hintText: "Attach File(png, jpg)",
            icon: Iconsax.briefcase,
            isReadOnly: true,
            onTap: () {
              showbottomSheet(context, height, pickedFile, imageCTRL);
            },
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

  Future<dynamic> showbottomSheet(BuildContext context, double height,
      XFile? pickedFile, TextEditingController controller) {
    return showFlexibleBottomSheet(
      // barrierColor: Colors.transparent,
      bottomSheetColor: Colors.white10,

      bottomSheetBorderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      minHeight: 0,
      initHeight: 0.8,
      maxHeight: 0.8,
      context: context,
      builder: (context, scrollController, bottomSheetOffset) {
        return Material(
          color: CColors.primaryColor,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            height: height * .3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Select the source of image',
                    style: TextStyle(
                      color: CColors.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            final XFile? image =
                                await CImageHander.imageHandler(
                                    context, ImageSource.camera);
                            setState(() {
                              pickedFile = image;
                              controller.text = pickedFile!.name;
                            });
                            Navigator.of(context).pop();
                          },
                          child: const CRoundedContainer(
                            height: 100,
                            width: 110,
                            showBorder: true,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.camera,
                              size: 40,
                              color: CColors.secondaryColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            final XFile? image =
                                await CImageHander.imageHandler(
                                    context, ImageSource.gallery);
                            setState(() {
                              pickedFile = image;
                            });
                            Navigator.of(context).pop();
                          },
                          child: const CRoundedContainer(
                            height: 100,
                            width: 110,
                            showBorder: true,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.browse_gallery,
                              size: 40,
                              color: CColors.secondaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: .02),
                ],
              ),
            ),
          ),
        );
      },
      isExpand: false,
    );
  }
}
