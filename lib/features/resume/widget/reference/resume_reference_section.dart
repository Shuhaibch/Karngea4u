import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/resume/widget/reference/resume_reference_details_list_widget.dart';
import 'package:karngea4u/features/resume/widget/resume_container_head_widget.dart';

class ResumeReferenceSection extends StatelessWidget {
  const ResumeReferenceSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResumeContainerHeadWidget(title: 'Reference'),
        const SizedBox(height: CSizes.md),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              const SizedBox(height: CSizes.xxs),
          itemCount: 1,
          itemBuilder: (context, index) => ResumeReferenceDetailsListWidget(
            width: width,
            title: "First Reference",
            name: "Nop Chanthy",
            phone: "Accounting",
            role: "Norton University",
            work: "12 Dec 2012  -  12 Jan 2016",
            mail: "Accountant",
          ),
        ),
      ],
    );
  }
}
