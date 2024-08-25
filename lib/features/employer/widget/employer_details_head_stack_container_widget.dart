import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_card_widget.dart';
import 'package:karngea4u/core/commen/widgets/container/rounded_container.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/employer/widget/employer_details_head_follow_unfollow_dialog_widget.dart';

class EmployerDetailsHeaderStackContainerWidget extends StatelessWidget {
  const EmployerDetailsHeaderStackContainerWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CColors.whiteColor,
      height: height * .29,
      child: Stack(
        children: [
          //* APP LOGO BG CONTAINER
          Stack(
            children: [
              Container(
                color: CColors.greyColor,
                width: double.infinity,
                height: height * .2,
                child: Center(
                  child: Image(
                    height: height * .05,
                    width: width * .17,
                    image: const AssetImage(
                      CImageString.appWhiteLogo,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 15,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => EmployerDetailsHeadFollowUnFollowDiologWidget(height: height, width: width),
                      );
                    },
                    child: const CRoundedContainer(
                      radius: 0,
                      padding: EdgeInsets.only(
                          top: CSizes.sm,
                          left: 45,
                          right: 45,
                          bottom: CSizes.xxs),
                      backgroundColor: CColors.secondaryColor,
                      child: Text(
                        'Follow',
                        style: TextStyle(color: CColors.whiteColor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: CSizes.sm, vertical: CSizes.sm),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CRoundedCardWidget(
                    elevation: 8,
                    outterPadding: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(CSizes.md),
                    child: Image(
                      height: height * .06,
                      width: width * .06,
                      image: const AssetImage(
                        CImageString.jobImage,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "វ៉េកហ្វាម៉ា ឯ.ក",
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: CColors.blackColor),
                        ),
                        Text(
                          "#N63 ផ្លូវ ញ៉ូតុន(ក្នុងកោះពេជ្រ) សង្កាត់ទន្លេបាសាក់ ខណ្ឌ ",
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  color: CColors.blackColor,
                                  overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
