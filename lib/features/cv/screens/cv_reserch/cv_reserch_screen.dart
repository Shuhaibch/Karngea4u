import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/cv/screens/cv_reserch/cv_reserch_card_widget.dart';
import 'package:karngea4u/features/cv/screens/cv_reserch/cv_reserch_text_form_screen.dart';
import 'package:karngea4u/features/cv/widgets/cv_basic_details_header_icon_widget.dart';

class CvResearchScreen extends StatelessWidget {
  const CvResearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        backgroungColor: CColors.primaryColor,
        showBackArrow: true,
        title: Text(
          'RESEARCH',
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
              icon: Icons.content_paste_search_outlined,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => CvResearchCardWidget(
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
                builder: (context) => const CvResearchTextFormScreen(),
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
