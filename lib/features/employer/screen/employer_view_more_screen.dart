import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/container/search_container.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/employer/screen/employer_details_screen.dart';
import 'package:karngea4u/features/employer/widget/employer_search_card_widget.dart';

class EmployerViewMoreScreen extends StatefulWidget {
  final String title;
  final bool isPremium;

  const EmployerViewMoreScreen(
      {super.key, required this.title, required this.isPremium});

  @override
  State<EmployerViewMoreScreen> createState() => _EmployerViewMoreScreenState();
}

class _EmployerViewMoreScreenState extends State<EmployerViewMoreScreen> {
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
          widget.title,
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
      body: Column(
        children: [
          const SizedBox(height: CSizes.sm),
          CSearchContainer(
            text: "Search",
            controller: searchCTRL,
            showBackground: true,
            isBlogScreen: true,
          ),
          Expanded(
            child: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 14,
              itemBuilder: (context, index) => EmployerSearchCardWidget(
                height: height,
                width: width,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => EmployerDetailsScreen(
                            isPremium: widget.isPremium,
                          )));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
