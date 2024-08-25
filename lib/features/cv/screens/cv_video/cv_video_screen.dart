import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/cv/screens/cv_video/cv_video_card_widget.dart';
import 'package:karngea4u/features/cv/screens/cv_video/cv_video_text_form_screen.dart';
import 'package:karngea4u/features/cv/widgets/cv_basic_details_header_icon_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CvVideoScreen extends StatelessWidget {
  const CvVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController? controller;
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        backgroungColor: CColors.primaryColor,
        showBackArrow: true,
        title: Text(
          'VIDEO',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
        dividerColor: CColors.secondaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              height: height * .02,
              width: width * .08,
              image: const AssetImage(
                CImageString.appWhiteLogo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CVBasicDetailsHeaderIconWidget(
              width: width,
              height: height,
              icon: Iconsax.folder_open,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                controller = YoutubePlayerController(
                  initialVideoId: 'T5v9ryEn70Q',
                  flags: const YoutubePlayerFlags(
                    autoPlay: false,
                    // showLiveFullscreenButton: false,
                    hideControls: false,
                    mute: true,
                    forceHD: false,
                  ),
                );
                return CVVideoCardWidget(
                  controller: controller,
                  height: height,
                  width: width,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller!.dispose();

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CvVideoTextFormScreen(),
              ));
        },
        backgroundColor: CColors.primaryColor,
        foregroundColor: CColors.whiteColor,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: CColors.whiteColor,
        ),
      ),
    );
  }
}
