import 'package:flutter/material.dart';
import 'package:flutter_test_task/generated/l10n.dart';

extension ThemeGetter on BuildContext {
  /// Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}

extension I18nGetter on BuildContext {
  S get i18n => S.of(this);
}
