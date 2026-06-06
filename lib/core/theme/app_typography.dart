import 'package:flutter/material.dart';

abstract final class AppTypography {
  static const String _fontFamily = 'Nunito';

  static const double largeLetterSpacing = -0.5;
  static const double mediumLetterSpacing = -0.3;
  static const double smallLetterSpacing = -0.1;

  static const TextStyle displayLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 34,
    fontWeight: .w700,
    height: 1.18,
    letterSpacing: largeLetterSpacing,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 28,
    fontWeight: .w700,
    height: 1.21,
    letterSpacing: mediumLetterSpacing,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: .w600,
    height: 1.25,
    letterSpacing: smallLetterSpacing,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 22,
    fontWeight: .w700,
    height: 1.27,
    letterSpacing: largeLetterSpacing,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: .w600,
    height: 1.3,
    letterSpacing: mediumLetterSpacing,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: .w600,
    height: 1.33,
    letterSpacing: smallLetterSpacing,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 17,
    fontWeight: .w600,
    height: 1.35,
    letterSpacing: largeLetterSpacing,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15,
    fontWeight: .w600,
    height: 1.4,
    letterSpacing: mediumLetterSpacing,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: .w600,
    height: 1.38,
    letterSpacing: smallLetterSpacing,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: .w400,
    height: 1.5,
    letterSpacing: largeLetterSpacing,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: .w400,
    height: 1.43,
    letterSpacing: mediumLetterSpacing,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: .w400,
    height: 1.5,
    letterSpacing: smallLetterSpacing,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15,
    fontWeight: .w600,
    height: 1.33,
    letterSpacing: largeLetterSpacing,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: .w500,
    height: 1.33,
    letterSpacing: mediumLetterSpacing,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10,
    fontWeight: .w500,
    height: 1.4,
    letterSpacing: smallLetterSpacing,
  );
}
