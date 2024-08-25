import 'package:flutter/material.dart';

class GridWidgetModel {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  GridWidgetModel(
      {required this.title, required this.icon, required this.onTap});
}

class LanguageWidgetModel {
  final String logo;
  final String language;

  LanguageWidgetModel({required this.logo, required this.language});
}

class JobDetailsModel {
  final String title, subTitle;
  final IconData icon;
  final VoidCallback? onTap;

  JobDetailsModel(
      {required this.title,
      required this.subTitle,
      required this.icon,
      required this.onTap});
}
