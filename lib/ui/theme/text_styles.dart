import 'package:flutter/material.dart';
import 'package:shoe_vault/ui/ui.dart';

class TextStyles {
  TextStyles._();
  static final _base = TextStyle(
    color: Palette.dark.shade5,
    fontFamily: FontNames.proximaNova,
  );

  static final h1 = _base.copyWith(
    fontSize: 48.0,
    fontWeight: FontWeight.w300,
  );

  static final h2 = _base.copyWith(
    fontSize: 36.0,
    fontWeight: FontWeight.w300,
  );

  static final h3 = _base.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
  );

  static final h4 = _base.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );

  static final bodyLarge = _base.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final bodyRegular = _base.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static final bodySmall = _base.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );
  static final bodyExtraSmall = _base.copyWith(
    fontSize: 10.0,
    fontWeight: FontWeight.w200,
  );

  static TextStyle withFontSize(double fontSize) =>
      _base.copyWith(fontSize: fontSize);
}
