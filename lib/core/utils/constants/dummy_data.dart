import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/features/home/widgets/home_widget_model.dart';
import 'package:karngea4u/features/job/screens/job_home_screen.dart';

class CDummyData {
  static List<HomeWidgetModel> homeWidgetList(BuildContext context) {
    return [
      HomeWidgetModel(
        title: "JOBS",
        icon: Icons.search,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const JobHomeScreen(),
          ));
        },
      ),
      HomeWidgetModel(
        title: "EMPLOYERS",
        icon: Icons.personal_injury_sharp,
        onTap: () {},
      ),
      HomeWidgetModel(
        title: "CV",
        icon: Iconsax.card5,
        onTap: () {},
      ),
      HomeWidgetModel(
        title: "BLOGS",
        icon: Iconsax.note,
        onTap: () {},
      ),
    ];
  }
}
