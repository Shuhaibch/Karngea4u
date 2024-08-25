import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/image/custom_rounded_image_container.dart';
  import 'package:karngea4u/core/commen/widgets/video_player/custom_video_player.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';

class ResumeVideoDetailsListWidget extends StatelessWidget {
  const ResumeVideoDetailsListWidget({
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
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const YouTubePlayerWidget(),
              ));
            },
            child: SizedBox(
              width: width * .2,
              height: width * .14,
              child: Stack(
                children: [
                  CCustomRoundedImage(
                    height: width * .14,
                    width: double.infinity,
                    imageUrl: CImageString.employerImage,
                    fit: BoxFit.cover,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Image(
                      // width: 80,
                      alignment: Alignment.center,
                      // height: 50,
                      image: AssetImage(
                        CImageString.ytLGIcons,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
