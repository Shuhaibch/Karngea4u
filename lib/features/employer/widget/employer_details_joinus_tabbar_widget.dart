import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/employer/widget/employer_details_aboutus_title_subtitle_widget.dart';

class EmployerDetailsJoinUsTabbarWidget extends StatelessWidget {
  const EmployerDetailsJoinUsTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = CDeviceUtils.getScreenWidth(context);
    // final height = CDeviceUtils.getScreenheight(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(color: CColors.primaryColor),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: EmployerDetailsScreenTitleSubTitleColumWidget(
                  isExpanded: true,
                  title: "Vision:",
                  subTitle:
                      "Our vision is to be the market leader in innovative technologies empowered by our young dynamic team to meet the present and future requirement of ICT (Information Communication Technology) Solutions.",
                ),
              ),
              const Divider(color: CColors.primaryColor),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: EmployerDetailsScreenTitleSubTitleColumWidget(
                  isExpanded: true,
                  title: "Mission:",
                  subTitle:
                      "To provide the best quality product and services in ICT based upon our client key business requirements. We strive to develop a superior state-of-the-art technology, innovation, leadership and partnerships. We will keep on top of today’s and tomorrow’s technology, no matter how fast it moves, to ensure our customers always have the best tools available to them.",
                ),
              ),
              const Divider(color: CColors.primaryColor),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: EmployerDetailsScreenTitleSubTitleColumWidget(
                  isExpanded: true,
                  title: "Core Values:",
                  subTitle:
                      "To provide the best quality product and services in ICT based upon our client key business requirements. We strive to develop a superior state-of-the-art technology, innovation, leadership and partnerships. We will keep on top of today’s and tomorrow’s technology, no matter how fast it moves, to ensure our customers always have the best tools available to them.",
                ),
              ),
              const Divider(color: CColors.primaryColor),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: EmployerDetailsScreenTitleSubTitleColumWidget(
                  isExpanded: true,
                  title: "Awards and Accolades:",
                  subTitle:
                      "19th and 20th August 2023 Epenh Co. Ltd  www.epenh.com exhibits at Hong Kong Cambodia- Investment and Event at the Factory 19th and 20th August 2023 ... look forward to many collaboration opportunities ,partnership and investment in software.",
                ),
              ),
              const Divider(color: CColors.primaryColor),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: EmployerDetailsScreenTitleSubTitleColumWidget(
                  isExpanded: true,
                  title: "Staff Trainings and Development:",
                  subTitle:
                      "Any company that invests in workplace training is investing in its own success.\nAs technology changes daily, employees expect their organizations to support them with continuous informative training programs to keep them updated with the latest industry processes, trends, and technologies to enable them in their jobs and career.\nDifferent types of employee training methods focus on enhancing various skills for employees to improve their performance and rate of productivity, as well as upskilling and reskilling them to prepare for what the future will require of them.\nFacilitating an ongoing learning culture in a workplace creates an adaptive, flexible, engaging, and productive working environment for your employees.",
                ),
              ),
              const Divider(color: CColors.primaryColor),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: EmployerDetailsScreenTitleSubTitleColumWidget(
                  isExpanded: true,
                  title: "Working Days and Hours:",
                  subTitle:
                      "We will do whatever it takes to make you – our customer successful, by delivering you and your clients the right application or MIS (Management Information Solution) that optimizes your resources and results in higher productivity including customer service which enable your business to succeed and be highly competitive. We will be with you all the way to achieve your (BPS) Business Process Solutions.",
                ),
              ),
              const Divider(color: CColors.primaryColor),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Compensation and Benefits:",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: CColors.blackColor),
                    ),
                    Text(
                      '- Lunch',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: CColors.blackColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      '- Break 1 Hr',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: CColors.blackColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      '- Gasoline',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: CColors.blackColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      '- Public Holiday leave',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: CColors.blackColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: CSizes.defaultSpace)
        ],
      ),
    );
  }
}
