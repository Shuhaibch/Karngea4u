import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/l10n/l10n.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CAppbar(
        title: Text(
          l10n.languages,
          style: Theme.of(context).textTheme.titleMedium!,
        ),
        showBackArrow: true,
        iconColor: CColors.primaryColor,
      ),
      body: Column(
        children: [
          const Divider(color: CColors.primaryColor),
          ListView(children: const [
            
          ],)
        ],
      ),
    );
  }
}
