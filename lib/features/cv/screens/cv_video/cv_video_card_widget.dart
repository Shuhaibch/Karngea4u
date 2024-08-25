import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/cv/screens/cv_video/cv_video_text_form_screen.dart';
import 'package:karngea4u/features/cv/widgets/cv_card_delete_dialog_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CVVideoCardWidget extends StatelessWidget {
  const CVVideoCardWidget({
    super.key,
    required this.height,
    required this.width,
    this.controller,
  });
  final double height, width;
  final YoutubePlayerController? controller;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CvVideoTextFormScreen(),
                  ));
            },
            backgroundColor: CColors.secondaryColor,
            foregroundColor: Colors.white,
            icon: Iconsax.edit,
            autoClose: true,
            label: '',
          ),
          SlidableAction(
            // An action can be bigger than the others.
            spacing: 0,
            onPressed: (context) {
              showDialog(
                  context: context,
                  builder: (context) => CVCardDeleteDialogWidget(
                        height: height,
                        width: width,
                        title: "Deleted Video\nAre you sure?",
                      ));
            },
            backgroundColor: CColors.primaryColor,
            foregroundColor: Colors.white,
            icon: Icons.delete_outline_rounded,
            autoClose: true,
            label: '',
          ),
        ],
      ),
      child: CCardWidget(
        elevation: 5,
        outterPadding: const EdgeInsets.symmetric(
          horizontal: CSizes.md,
        ),
        padding: const EdgeInsets.all(0),
        child: YoutubePlayer(
          controller: controller!,
          showVideoProgressIndicator: true,
          progressIndicatorColor: CColors.primaryColor,
          bottomActions: [
            const SizedBox(width: 14.0),
            CurrentPosition(),
            const SizedBox(width: 8.0),
            ProgressBar(),
            PlayPauseButton(),
            RemainingDuration(),
            const PlaybackSpeedButton(),
          ],
          progressColors: const ProgressBarColors(
            playedColor: CColors.primaryColor,
            handleColor: CColors.primaryColor,
          ),
          onReady: () {
            controller!.play();
          },
        ),
      ),
    );
  }
}
