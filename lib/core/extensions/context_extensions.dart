import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Size get screenSize => MediaQuery.sizeOf(this);
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  bool get isKeyboardVisible => viewInsets.bottom > 0;
}
