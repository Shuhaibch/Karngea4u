import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/image_string.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';
import 'package:karngea4u/features/message/widgets/message_chat_widget.dart';
import 'package:karngea4u/features/message/widgets/message_text_form_feild_widget.dart';

class MessageDetailsScreen extends StatelessWidget {
  const MessageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        backgroungColor: CColors.primaryColor,
        dividerColor: CColors.whiteColor,
        iconColor: CColors.whiteColor,
        showDivider: false,
        title: Text(
          'Epenh Co.,Ltd',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: CColors.whiteColor),
        ),
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
      body: const Stack(
        children: [
          Column(
            children: [
              MessageChatWidget(isUser: true),
              MessageChatWidget(isUser: false),
              MessageChatWidget(isUser: true),
            ],
          ),
          MessageTextFormFeildWidget(),
        ],
      ),
    );
  }
}
