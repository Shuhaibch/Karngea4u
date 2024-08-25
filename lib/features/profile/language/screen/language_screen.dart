import 'package:flutter/material.dart';
import 'package:karngea4u/core/commen/widgets/appbar/appbar.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/constants/dummy_data.dart';
import 'package:karngea4u/core/utils/sizes/sizes.dart';
import 'package:karngea4u/features/profile/language/widgets/language_title_widgets.dart';
import 'package:karngea4u/l10n/l10n.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int selectedLanguage = 0;
  @override
  Widget build(BuildContext context) {
    final languageList = CDummyData.languageWidgetModel();
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CAppbar(
        title: Text(
          l10n.languages,
          style: Theme.of(context).textTheme.titleMedium!,
        ),
        showBackArrow: true,
        dividerColor: CColors.primaryColor,
        iconColor: CColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ListView.separated(
          itemCount: languageList.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: CSizes.lg);
          },
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedLanguage = index;
                });
              },
              child: LanguageTileWidget(
                title: languageList[index].language,
                image: languageList[index].logo,
                isSelected: selectedLanguage == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
