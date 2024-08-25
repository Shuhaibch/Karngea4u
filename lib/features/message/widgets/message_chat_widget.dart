import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/device/device_util.dart';

class MessageChatWidget extends StatelessWidget {
  const MessageChatWidget({super.key, required this.isUser});
  final bool isUser;
  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          isUser ? 64.0 : 16.0,
          4,
          isUser ? 16.0 : 64.0,
          4,
        ),
        child: Align(
          alignment: (isUser ? Alignment.topRight : Alignment.topLeft),
          child: Container(
            width: width * .5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (isUser
                  ? CColors.messageUserColor
                  : CColors.messageNotUserColor),
            ),
            padding: const EdgeInsets.all(12),
            child: Text(
              "Loma Technology is a software company based in Phnom Penh, Cambodia",
              maxLines: null,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
