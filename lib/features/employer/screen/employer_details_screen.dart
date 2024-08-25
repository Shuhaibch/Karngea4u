import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/employer/widget/employer_details_aboutus_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_blogs_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_head_stack_container_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_jobs_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_joinus_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_photos_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_product_and_services_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_qanda_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_tabbar_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_videos_tabbar_widget.dart';

class EmployerDetailsScreen extends StatelessWidget {
  const EmployerDetailsScreen({super.key, required this.isPremium});
  final bool isPremium;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    final List<Widget> standardList = [
      const EmployerDetailsAboutusTabbarWidget(),
      const EmployerDetailsJobsTabbarWidget(),
      const EmployerDetailsJoinUsTabbarWidget(),
    ];
    final List<Widget> premiumList = [
      const EmployerDetailsAboutusTabbarWidget(),
      const EmployerDetailsJobsTabbarWidget(),
      const EmployerDetailsJoinUsTabbarWidget(),
      const EmployerDetailsPhotosTabbarWidget(),
      const EmployerDetailsQAndATabbarWidget(),
      const EmployerDetailsProductAndServicesTabbarWidget(),
      const EmployerDetailsVideosTabbarWidget(),
      const EmployerDetailsBlogsTabbarWidget()
    ];
    return DefaultTabController(
      length: isPremium ? premiumList.length : standardList.length,
      child: Scaffold(
        appBar: CAppbar(
          showBackArrow: true,
          iconColor: CColors.primaryColor,
          title: Text(
            'COMPANY DETAIL',
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
            EmployerDetailsHeaderStackContainerWidget(
                height: height, width: width),
            EmployerComponyDetailsTabBarWidget(
              isPremium: isPremium,
            ),
            Expanded(
              child:
                  TabBarView(children: isPremium ? premiumList : standardList),
            )
          ],
        ),
      ),
    );
  }
}
