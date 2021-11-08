import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // This [delegate] will be called from MaterialApp
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String>? _localizedString;

  // This method will load the required JSON file according to locale
  Future<bool> load() async {
    String jsonStr =
        await rootBundle.loadString("lang/${locale.languageCode}.json");

    Map<String, dynamic> jsonMap = jsonDecode(jsonStr);

    _localizedString =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));

    return true;
  }

  // This method will return the localized string for given key
  String translate(String key) {
    return _localizedString![key] ?? "";
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // All supported languages
    return ["en", "es", "hi"].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalizations = AppLocalizations(locale);

    // The [load] method from AppLocalizations class runs here
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
