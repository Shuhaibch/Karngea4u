import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/text/bullet_point_text_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/employer/widget/employer_details_aboutus_title_subtitle_icon_widget.dart';
import 'package:karngea4u/features/employer/widget/employer_details_aboutus_title_subtitle_widget.dart';

class EmployerDetailsAboutusTabbarWidget extends StatelessWidget {
  const EmployerDetailsAboutusTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: CSizes.xs),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: Text(
              "Overview",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: CColors.primaryColor),
            ),
          ),
          const Divider(color: CColors.primaryColor),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: Text(
              "We are an ICT company based in Phnom Penh, Cambodia and part of E Smart Group which has offices and associates in Canada, USA, India, United Arab Emirates and South Africa. Our group and partners have over 200 employees and provided services to over 3,000 clients since 1996. We now have over 18 years of experience in providing ICT services to various international client and have been in the forefront of technology development in various areas of Software Development, Portal Development and Software Solutions.",
              maxLines: null,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: CColors.blackColor),
            ),
          ),
          const SizedBox(height: CSizes.sm),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: Text(
              "Company Detail",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: CColors.primaryColor),
            ),
          ),
          const Divider(color: CColors.primaryColor),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Industry:',
                        subTitle: 'Hotel Management / Restaurants',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Phone Number:',
                        subTitle: '023213123/93345479',
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Employees Size:',
                        subTitle: '11-50 employees',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Phone Found:',
                        subTitle: '2015',
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Company Type:',
                        subTitle: 'Sole Proprietorship',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Email:',
                        subTitle: 'dane1@epenh.com',
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: EmployerDetailsScreenTitleSubTitleColumWidget(
                        title: 'Website:',
                        subTitle: 'https://epenh.com/en/',
                      ),
                    ),
                  ],
                ),
                EmployerDetailsScreenAboutUsTitleSubTitleIconsColumnWidget(),
              ],
            ),
          ),
          const SizedBox(height: CSizes.sm),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: Text(
              "Membership",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: CColors.primaryColor),
            ),
          ),
          const Divider(color: CColors.primaryColor),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 12,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  const BulletPointTextWidget(text: "Ideal for startup"),
            ),
          )
        ],
      ),
    );
  }
}
