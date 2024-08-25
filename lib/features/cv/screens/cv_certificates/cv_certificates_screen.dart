import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/cv/screens/cv_certificates/cv_certificates_card_widget.dart';
import 'package:karngea4u/features/cv/screens/cv_certificates/cv_certificates_text_form_screen.dart';
import 'package:karngea4u/features/cv/widgets/cv_basic_details_header_icon_widget.dart';

class CvCertificatesScreen extends StatelessWidget {
  const CvCertificatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        backgroungColor: CColors.primaryColor,
        showBackArrow: true,
        title: Text(
          'CERIFICATES',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        dividerColor: CColors.secondaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              height: height * .02,
              width: width * .08,
              image: const AssetImage(
                CImageString.appWhiteLogo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CVBasicDetailsHeaderIconWidget(
              width: width,
              height: height,
              icon: Iconsax.wallet_1,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => CvCertificatesCardWidget(
                height: height,
                width: width,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CvCertificatesTextFormScreen(),
              ));
        },
        backgroundColor: CColors.primaryColor,
        foregroundColor: CColors.whiteColor,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: CColors.whiteColor,
        ),
      ),
    );
  }
}
