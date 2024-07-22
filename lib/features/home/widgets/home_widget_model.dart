import 'package:flutter/material.dart';

class HomeWidgetModel {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  HomeWidgetModel(
      {required this.title, required this.icon, required this.onTap});
}
