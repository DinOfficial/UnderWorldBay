import 'package:flutter/cupertino.dart';
import 'package:underworld_bay/l10n/app_localizations.dart';

extension LocalizationExtention on BuildContext{
  AppLocalizations get l10n => AppLocalizations.of(this);
}