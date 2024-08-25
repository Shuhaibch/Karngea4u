import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/container/search_container.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/drop_down/drop_down_widget.dart';
import 'package:karngea4u/core/commen/widgets/tabbar/dual_tabbar_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/blog/widgets/blog_card_widget.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class BlogSearchScreen extends StatefulWidget {
  const BlogSearchScreen({super.key, required this.controller});

  final MotionTabBarController controller;

  @override
  State<BlogSearchScreen> createState() => _BlogSearchScreenState();
}

class _BlogSearchScreenState extends State<BlogSearchScreen>
    with TickerProviderStateMixin {
  final TextEditingController searchCTRL = TextEditingController();
  String? blogFilterValue;
  TabController? blogTabBarCTRL;
  @override
  void initState() {
    super.initState();
    blogTabBarCTRL == TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    searchCTRL.dispose();
    // blogTabBarCTRL!.dispose();
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
          'BLOGS',
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
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            // const BlogHomeTabBarWidget(),
            DualTabbarWidget(
              unselectedLabelColor: CColors.whiteColor,
              bgColor: CColors.primaryColor,
              controller: blogTabBarCTRL,
              tablist: const [
                Text(
                  'Premium',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Standard',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: CSizes.sm),
            CSearchContainer(
              text: "Search",
              controller: searchCTRL,
              showBackground: true,
              isBlogScreen: true,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
              child: Column(
                children: [
                  const SizedBox(height: CSizes.sm),
                  CDropDownFeild(
                      icon: Iconsax.filter5,
                      hintText: 'Filter',
                      isBlogScreen: true,
                      dropdownTextColor: CColors.primaryColor,
                      hintColor: CColors.blackColor,
                      dropdownColor: CColors.whiteColor,
                      borderColor: CColors.secondaryColor,
                      textColor: CColors.blackColor,
                      value: blogFilterValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          blogFilterValue = newValue!;
                        });
                      },
                      items: CDummyData.blogFilterList()),
                ],
              ),
            ),
            const SizedBox(height: CSizes.sm),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => BlogCardWidget(
                    width: width,
                    height: height,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
