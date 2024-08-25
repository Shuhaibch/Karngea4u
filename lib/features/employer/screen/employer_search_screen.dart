import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/container/search_container.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/employer/screen/employer_details_screen.dart';
import 'package:karngea4u/features/employer/screen/employer_view_more_screen.dart';
import 'package:karngea4u/features/employer/widget/employer_head_container_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_search_card_widget.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class EmployerSearchScreen extends StatefulWidget {
  const EmployerSearchScreen({super.key, required this.controller});

  final MotionTabBarController controller;

  @override
  State<EmployerSearchScreen> createState() => _EmployerSearchScreenState();
}

class _EmployerSearchScreenState extends State<EmployerSearchScreen> {
  final TextEditingController searchCTRL = TextEditingController();
  @override
  void dispose() {
    searchCTRL.dispose();
    super.dispose();
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
          'EMPLOYERS',
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
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: CSizes.sm),
            CSearchContainer(
              text: "Search",
              controller: searchCTRL,
              showBackground: true,
              isBlogScreen: true,
            ),
            const SizedBox(height: CSizes.sm),
            EmployerHeadContainerWidget(
              title: 'Premium Company',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EmployerViewMoreScreen(
                          isPremium: true,
                          title: "PREMIUM COMPANY",
                        )));
              },
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => EmployerSearchCardWidget(
                height: height,
                width: width,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EmployerDetailsScreen(
                            isPremium: true,
                          )));
                },
              ),
            ),
            EmployerHeadContainerWidget(
              title: 'Standard Company',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EmployerViewMoreScreen(
                          isPremium: false,
                          title: "STANDARD  COMPANY",
                        )));
              },
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => EmployerSearchCardWidget(
                height: height,
                width: width,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EmployerDetailsScreen(
                            isPremium: false,
                          )));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
