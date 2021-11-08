import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localizations_example/app_localizations.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nespresso - Flutter Localizations Example',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // Add this line to load translated strings from language JSON files
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en", ""), // English, no country code
        Locale("es", ""), // Spanish, no country code
        Locale("hi", ""), // Hindi, no country code
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode) {
            return supportedLocale;
          }
        }
        // If the current locale doesn't match with any of the
        // supportedLocales, use the first supportedLocale, i.e., English.
        return supportedLocales.first;
      },
      home: HomePage(),
    );
  }
}
