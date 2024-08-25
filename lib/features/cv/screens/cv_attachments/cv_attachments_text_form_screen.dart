import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/textfeild/cv_text_form_feild.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class CvAttachmentsTextFormScreen extends StatefulWidget {
  const CvAttachmentsTextFormScreen({super.key});

  @override
  State<CvAttachmentsTextFormScreen> createState() =>
      _CvAttachmentsTextFormScreenState();
}

class _CvAttachmentsTextFormScreenState
    extends State<CvAttachmentsTextFormScreen> {
  TextEditingController fileCTRL = TextEditingController();
  XFile? pickedFile;
  FilePickerResult? result;

  @override
  void dispose() {
    super.dispose();
    fileCTRL.dispose();
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
        title: Text('ATTACH FILES',
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
          child: CVTextFormFeild(
            controller: fileCTRL,
            hintText: "Attach File (pdf, word)",
            icon: Iconsax.briefcase,
            isReadOnly: true,
            onTap: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles();

              if (result != null) {
                File file = File(result.files.single.path!);
                setState(() {
                  fileCTRL.text = file.path.toString();
                });
              } else {
                // User canceled the picker
              }
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
}
