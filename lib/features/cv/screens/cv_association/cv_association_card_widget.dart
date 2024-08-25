import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karngea4u/core/commen/widgets/container/card_widget.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/cv/screens/cv_association/cv_association_text_form_screen.dart';
import 'package:karngea4u/features/cv/widgets/cv_card_delete_dialog_widget.dart';

class CvAssociationCardWidget extends StatelessWidget {
  const CvAssociationCardWidget({
    super.key,
    required this.height,
    required this.width,
  });
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
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
                      builder: (context) => const CvAssociationTextFormScreen(),
                    ));
              },
              backgroundColor: CColors.secondaryColor,
              foregroundColor: Colors.white,
              icon: Iconsax.edit,
              autoClose: true,
              label: '',
            ),
            SlidableAction(
              spacing: 0,
              onPressed: (context) {
                showDialog(
                    context: context,
                    builder: (context) => CVCardDeleteDialogWidget(
                          height: height,
                          width: width,
                          title: 'Deleted Association\nAre you sure?',
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
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Epenh Association",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: CColors.blackColor),
                ),
                Text(
                  "silver",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: CColors.blackColor),
                ),
                Text(
                  "01 Jan 2013",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: CColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
