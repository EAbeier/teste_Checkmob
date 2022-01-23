import 'package:avaliacao_checkmob/app/utils/enums/enum_theme.dart';
import 'package:flutter/material.dart';

class ThemeStore extends ValueNotifier<EnumTheme> {
  ThemeStore() : super(EnumTheme.dark);

  void toggleTheme() {
    value = isDark ? EnumTheme.light : EnumTheme.dark;
  }

  ThemeMode get currentMode {
    final themeMode =
        value == EnumTheme.dark ? ThemeMode.dark : ThemeMode.light;
    return themeMode;
  }

  bool get isDark {
    return value == EnumTheme.dark;
  }
}
