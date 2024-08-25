import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/image/rounded_image_container.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
 
class ResumePortfolioDetailsListWidget extends StatelessWidget {
  const ResumePortfolioDetailsListWidget({
    super.key,
    required this.width,
  });

  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * .13,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: width * .01),
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CRoundedImage(
            imageUrl: CImageString.blogCardImage,
            width: width * .13,
            height: width * .13,
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
