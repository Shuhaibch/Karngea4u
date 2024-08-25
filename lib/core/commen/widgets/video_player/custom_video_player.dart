import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerWidget extends StatefulWidget {
  const YouTubePlayerWidget({
    super.key,
  });

  @override
  State<YouTubePlayerWidget> createState() => _YouTubePlayerWidgetState();
}

class _YouTubePlayerWidgetState extends State<YouTubePlayerWidget> {
  YoutubePlayerController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'T5v9ryEn70Q',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        forceHD: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _controller!),
        builder: (context, player) {
          return Scaffold(
            appBar: CAppbar(
              showBackArrow: true,
              iconColor: CColors.primaryColor,
              title: Text(
                'EMPLOYERS',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image(
                    height: height * .02,
                    width: width * .08,
                    image: const AssetImage(
                      CImageString.appLogo,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                YoutubePlayer(
                  controller: _controller!,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: CColors.primaryColor,
                  progressColors: const ProgressBarColors(
                    playedColor: CColors.primaryColor,
                    handleColor: CColors.primaryColor,
                  ),
                  onReady: () {
                    _controller!.play();
                  },
                ),
              ],
            ),
          );
        });
  }
}
