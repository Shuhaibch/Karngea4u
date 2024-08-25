import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';

class EmployerDetailsQAndATabbarWidget extends StatelessWidget {
  const EmployerDetailsQAndATabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: CSizes.md),
          ExpansionTile(
            collapsedIconColor: CColors.primaryColor,
            iconColor: CColors.primaryColor,
            backgroundColor: CColors.secondaryColor,
            textColor: CColors.whiteColor,
            collapsedBackgroundColor: CColors.secondaryColor,
            collapsedTextColor: CColors.whiteColor,
            title: const Text(
              'How to use the system?',
            ),
            children: [
              Container(
                color: CColors.whiteColor,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: CSizes.sm, horizontal: CSizes.defaultSpace),
                  child: Text(
                    'PMS stands for Property Management System. It is a software application used in the hospitality industry to manage various aspects of hotel operations. A PMS system typically includes features such as reservations management, guest check-in and check-out, room assignment, billing and invoicing, housekeeping management, reporting and analytics, and integration with other hotel systems like point of sale (POS) and customer relationship management (CRM) systems..The primary purpose of a PMS system is to streamline and automate hotel operations, improve guest service, and enhance overall efficiency. It allows hotel staff to efficiently manage reservations, track guest preferences, allocate rooms, process payments, generate reports, and maintain a centralized database of guest information.',
                    maxLines: null,
                    style: TextStyle(color: CColors.blackColor),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: CSizes.xxs),
          ExpansionTile(
            collapsedIconColor: CColors.primaryColor,
            iconColor: CColors.primaryColor,
            backgroundColor: CColors.secondaryColor,
            textColor: CColors.whiteColor,
            collapsedBackgroundColor: CColors.secondaryColor,
            collapsedTextColor: CColors.whiteColor,
            title: const Text(
              'How to enter apply a job?',
            ),
            children: [
              Container(
                color: CColors.whiteColor,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: CSizes.sm, horizontal: CSizes.defaultSpace),
                  child: Text(
                    'PMS stands for Property Management System. It is a software application used in the hospitality industry to manage various aspects of hotel operations. A PMS system typically includes features such as reservations management, guest check-in and check-out, room assignment, billing and invoicing, housekeeping management, reporting and analytics, and integration with other hotel systems like point of sale (POS) and customer relationship management (CRM) systems..The primary purpose of a PMS system is to streamline and automate hotel operations, improve guest service, and enhance overall efficiency. It allows hotel staff to efficiently manage reservations, track guest preferences, allocate rooms, process payments, generate reports, and maintain a centralized database of guest information.',
                    maxLines: null,
                    style: TextStyle(color: CColors.blackColor),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: CSizes.xxs),
          ExpansionTile(
            collapsedIconColor: CColors.primaryColor,
            iconColor: CColors.primaryColor,
            backgroundColor: CColors.secondaryColor,
            textColor: CColors.whiteColor,
            collapsedBackgroundColor: CColors.secondaryColor,
            collapsedTextColor: CColors.whiteColor,
            title: const Text(
              'What is the pms?',
            ),
            children: [
              Container(
                color: CColors.whiteColor,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: CSizes.sm, horizontal: CSizes.defaultSpace),
                  child: Text(
                    'PMS stands for Property Management System. It is a software application used in the hospitality industry to manage various aspects of hotel operations. A PMS system typically includes features such as reservations management, guest check-in and check-out, room assignment, billing and invoicing, housekeeping management, reporting and analytics, and integration with other hotel systems like point of sale (POS) and customer relationship management (CRM) systems..The primary purpose of a PMS system is to streamline and automate hotel operations, improve guest service, and enhance overall efficiency. It allows hotel staff to efficiently manage reservations, track guest preferences, allocate rooms, process payments, generate reports, and maintain a centralized database of guest information.',
                    maxLines: null,
                    style: TextStyle(color: CColors.blackColor),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
