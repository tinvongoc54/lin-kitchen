import 'package:flutter/material.dart';

class PetsCareColors {
  static const red = Color(0xFFE54D4D);
  static const gray = Color(0xFFF1F2F6);
  static const grayLight = Color(0xfff5f5f5);
  static const grayDark = Color(0x99000000);
  static const black = Color(0xFF171717);
  static const white = Colors.white;
  static const shadow = Color(0x5EB9B6C6);
  static const green = Colors.green;
  static const yellow = Color(0xFF171717);
  static const purple = Color(0xFF7A86AE);

  static const black_10 = Color(0x1A171717);

  static const primary = Color(0xFFFE724C);
  static const primaryDark = Color(0xCC1E1E1E);
  static const primaryDark_50 = Color(0x801E1E1E);

  static const secondaryWhite = Color(0xFFFFFFFF);
  static const secondaryGray = Color(0xFFD4D4D4);
  static const secondaryBlack = Color(0xFF000000);

  static const line = Color(0xFFEFEEEF);
  static const imagePlaceHolder = Color(0xFFD9D9D9);

  static const contentBlack = Color(0xFF404040);

  static const kPrimaryGradient = LinearGradient(
    colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const backgroundTopProfile = LinearGradient(
    colors: [primaryDark_50, primaryDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}