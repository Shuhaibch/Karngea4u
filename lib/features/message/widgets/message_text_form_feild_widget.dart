import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/color/colors.dart';

class MessageTextFormFeildWidget extends StatelessWidget {
  const MessageTextFormFeildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Expanded(
                child: TextFormField(
              cursorColor: CColors.messageNotUserColor,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: CColors.primaryColor),
              decoration: InputDecoration(
                fillColor: CColors.messageUserColor,
                filled: true,
                counterStyle:
                    const TextStyle(color: CColors.messageNotUserColor),
                hintText: "Type a message...",
                errorStyle: Theme.of(context).inputDecorationTheme.errorStyle,
                hintStyle: Theme.of(context)
                    .inputDecorationTheme
                    .hintStyle!
                    .copyWith(color: CColors.messageNotUserColor),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            )),
            const SizedBox(
              width: 15,
            ),
            FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () {},
              backgroundColor: CColors.messageUserColor,
              elevation: 0,
              child: const Icon(
                Icons.send,
                color: CColors.messageNotUserColor,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
