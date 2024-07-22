import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/home/widgets/home_widget_model.dart';

class GridContainerWidget extends StatelessWidget {
  const GridContainerWidget(
      {super.key,
      required this.index,
      required this.widget,
      required this.width});
  final int index;
  final HomeWidgetModel widget;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: index == 0 || index == 1
                  ? const BorderSide(color: CColors.primaryColor, width: 1.0)
                  : BorderSide.none,
              top: index == 2 || index == 3
                  ? const BorderSide(color: CColors.primaryColor, width: 1.0)
                  : BorderSide.none, // Bottom border
              right: index == 0 || index == 2
                  ? const BorderSide(color: CColors.primaryColor, width: 1.0)
                  : BorderSide.none,
              left: index == 1 || index == 3
                  ? const BorderSide(color: CColors.primaryColor, width: 1.0)
                  : BorderSide.none,
              // Add other decorations if needed (e.g., rounded corners)
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: width * .07,
                color: CColors.primaryColor,
              ),
              const SizedBox(height: CSizes.md),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          )),
    );
  }
}
