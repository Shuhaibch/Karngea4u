import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/commen/widgets/layout/grid_layout.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/job/job_details/screens/apply_job_screen.dart';
import 'package:karngea4u/features/job/job_details/widgets/job_additional_info_grid_widget.dart';
import 'package:karngea4u/features/job/job_details/widgets/job_details_appbar_bookmark_alert_widget.dart';
import 'package:karngea4u/features/job/job_details/widgets/job_details_contact_info_card_widget.dart';
import 'package:karngea4u/features/job/job_details/widgets/job_details_head_card_widget.dart';
import 'package:karngea4u/features/job/job_details/widgets/job_details_title_subtitle_card_widget.dart';
import 'package:share_plus/share_plus.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    final widgetList = CDummyData.jobDetalsWidgetList(context);
    return Scaffold(
      appBar: CAppbar(
        padding: 0,
        showBackArrow: true,
        dividerColor: CColors.primaryColor,
        iconColor: CColors.primaryColor,
        title: Text(
          'JOB DETAILS',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(),
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return JobDetailsAppBarBookMarkAlertWidget(
                      height: height, width: width);
                },
              );
            },
            child: Icon(
              Iconsax.bookmark,
              size: width * .026,
              color: CColors.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                // showModalBottomSheet(
                //   showDragHandle: false,
                //   elevation: 10,
                //   backgroundColor: CColors.secondaryColor,
                //   context: context,
                //   builder: (ctx) => Container(
                //     height: height * .3,

                //   ),
                // );
                Share.share('check out my website https://example.com');
              },
              child: Icon(
                Icons.share,
                size: width * .026,
                color: CColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.spaceBtwInputFeild),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobDetailsHeadCardWidget(width: width, height: height),
              const SizedBox(height: CSizes.spaceBtwItem),
              Text('Additional Information',
                  style: Theme.of(context).textTheme.headlineSmall!),
              CGridLayout(
                crossAxisCount: 3,
                itemCount: 9,
                mainAxisExtent: height * .08,
                itemBuilder: (context, index) {
                  return JobAdditionalInfoGridWidget(
                    width: width,
                    icon: widgetList[index].icon,
                    subTitle: widgetList[index].subTitle,
                    title: widgetList[index].title,
                  );
                },
              ),
              const JobDetailsTitlesubTitleCardWidget(
                title: 'Job Description',
                subTitle:
                    '- Daily computer maintenance and users support.- Constantly check network and internet connection.- Talking staff or clients through a series of actions, either face to face or over the telephone to help systems or resolve issues.- Install and configure software on Windows Servers (DNS, DHCP, File/Print services, etc.) with Microsoft Active Directory, daily maintenance and Backup data.- Maintain printers, scanners and photocopy machine.- Maintenance and control on PABX, Telephone system and CCTV system camera security- Solving computer software and hardware faults.- Repairing equipment and replacing parts.- Setup and configure e-mail with Microsoft Outlook.- Setup, Configure and maintain attendance machines (Finger Print).- Prepare LCD and other relevant IT equipment for every meeting.- Schedule antivirus definition update and secure critical data.- Schedule antivirus definition update and secure critical data.- Schedule antivirus definition update and secure critical data.',
              ),
              const JobDetailsTitlesubTitleCardWidget(
                title: 'Job Requirement',
                subTitle:
                    '- Daily computer maintenance and users support.- Constantly check network and internet connection.- Talking staff or clients through a series of actions, either face to face or over the telephone to help systems or resolve issues.- Install and configure software on Windows Servers (DNS, DHCP, File/Print services, etc.) with Microsoft Active Directory, daily maintenance and Backup data.- Maintain printers, scanners and photocopy machine.- Maintenance and control on PABX, Telephone system and CCTV system camera security- Solving computer software and hardware faults.- Repairing equipment and replacing parts.- Setup and configure e-mail with Microsoft Outlook.- Setup, Configure and maintain attendance machines (Finger Print).- Prepare LCD and other relevant IT equipment for every meeting.- Schedule antivirus definition update and secure critical data.- Schedule antivirus definition update and secure critical data.- Schedule antivirus definition update and secure critical data.',
              ),
              const JobDetailsTitlesubTitleCardWidget(
                title: 'Job Benefits',
                subTitle:
                    '- Daily computer maintenance and users support.- Constantly check network and internet connection.- Talking staff or clients through a series of actions, either face to face or over the telephone to help systems or resolve issues.- Install and configure software on Windows Servers (DNS, DHCP, File/Print services, etc.) with Microsoft Active Directory, daily maintenance and Backup data.- Maintain printers, scanners and photocopy machine.- Maintenance and control on PABX, Telephone system and CCTV system camera security- Solving computer software and hardware faults.- Repairing equipment and replacing parts.- Setup and configure e-mail with Microsoft Outlook.- Setup, Configure and maintain attendance machines (Finger Print).- Prepare LCD and other relevant IT equipment for every meeting.- Schedule antivirus definition update and secure critical data.- Schedule antivirus definition update and secure critical data.- Schedule antivirus definition update and secure critical data.',
              ),
              JobDetailsContactInfoCardWidget(width: width),
              // const SizedBox(height: CSizes.spaceBtwItem),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            // height: ,
            width: double.infinity,
            image: AssetImage(
              CImageString.jobDetailsUploadResumeImage,
            ),
            fit: BoxFit.contain,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ApplyJobScreen(),
                  ));
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
                    "Apply Job",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: CColors.textWhiteColor),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
