import 'dart:ui';

enum Language {
  english(
    Locale('en', 'US'),
    'English',
  ),
  china(
    Locale('ch', 'CN'),
    'Chinese',
  ),
  combodia(
    Locale('km', 'KH'),
    
    'Cambodia',
  );

  const Language(this.value, this.text);

  final Locale value;
  final String text;
}
