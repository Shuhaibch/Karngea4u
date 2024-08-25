import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/container/search_container.dart';
import 'package:karngea4u/core/commen/widgets/tabbar/dual_tabbar_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/jobs/widget/job_home_result_container_widget.dart';
import 'package:karngea4u/features/job/jobs/widget/premium_job_list_card_widget.dart';
import 'package:karngea4u/features/job/jobs/widget/standard_job_list_card_widget.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class JobSearchScreen extends StatefulWidget {
  const JobSearchScreen({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });

  final double width;
  final double height;
  final MotionTabBarController controller;

  @override
  State<JobSearchScreen> createState() => _JobSearchScreenState();
}

class _JobSearchScreenState extends State<JobSearchScreen>
    with TickerProviderStateMixin {
  final TextEditingController searchCTRL = TextEditingController();
  TabController? jobTabBarCTRL;
  @override
  void initState() {
    super.initState();
    jobTabBarCTRL == TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    searchCTRL.dispose();
    // jobTabBarCTRL!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Container(
              width: widget.width,
              color: CColors.primaryColor,
              height: widget.height * .19,
            ),
          ),
          Column(
            children: [
              CSearchContainer(
                text: "Search",
                showBackground: true,
                controller: searchCTRL,
              ),
              const SizedBox(height: CSizes.spaceBtwItem),
              // const JobHomeTabBarWidget(),
              DualTabbarWidget(
                controller: jobTabBarCTRL,
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
              const SizedBox(height: CSizes.spaceBtwItem),
              JobHomeResultContainerWidget(height: widget.height),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return PremiumJobListCardWidget(
                          width: widget.width, height: widget.height);
                    },
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return StandardJobListCardWidget(
                          width: widget.width, height: widget.height);
                    },
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
