import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karngea4u/core/language/bloc/localization_bloc.dart';
import 'package:karngea4u/core/utils/color/colors.dart';
import 'package:karngea4u/core/utils/theme/theme.dart';
import 'package:karngea4u/features/splash/screens/splash_screen.dart';
import 'package:karngea4u/init_depentancies.dart';
import 'package:karngea4u/l10n/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => serviceLocator<LocalizationBloc>(),
        )
      ],
      child: BlocBuilder<LocalizationBloc, AppLocalizationState>(
        buildWhen: (previous, current) =>
            previous.selectedLanguage != current.selectedLanguage,
        builder: (context, state) {
          return MaterialApp(
            locale: state.selectedLanguage.value,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            color: CColors.whiteColor,
            debugShowCheckedModeBanner: false,
            title: 'Karngea4u App',
            themeMode: ThemeMode.system,
            theme: CAppTheme.lightTheme,
            home: const SafeArea(
              child: SplashScreen(),
            ),
          );
        },
      ),
    );
  }
}
