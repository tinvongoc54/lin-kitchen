import 'package:flutter/material.dart';

class AppColors {
  static const red = Color(0xFFE54D4D);
  static const gray = Color(0xFFF1F2F6);
  static const grayLight = Color(0xfff5f5f5);
  static const grayDark = Color(0xFF9796A1);
  static const black = Color(0xFF171717);
  static const white = Colors.white;
  static const shadow = Color(0x5EB9B6C6);
  static const green = Colors.green;
  static const blueDark = Color(0xFF30384F);
  static const blueDark2 = Color(0xFF191B2F);

  static const black_10 = Color(0x1A171717);

  static const primary = Color(0xFFFE724C);
  static const primaryLight = Color(0xFFFFECE7);
  static const primaryDark = Color(0xCC1E1E1E);
  static const primaryDark_50 = Color(0x801E1E1E);

  static const secondaryWhite = Color(0xFFFFFFFF);
  static const secondaryGray = Color(0xFFD4D4D4);
  static const secondaryBlack = Color(0xFF000000);

  static const whiteOpa40 = Color(0x40FFFFFF);

  static const primaryGradient = LinearGradient(
    colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const welcomeGradient = LinearGradient(
    colors: [Color(0x00FFFFFF), Color(0x40191B2F), Color(0xCC191B2F), blueDark2],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
