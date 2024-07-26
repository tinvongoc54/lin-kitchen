import 'package:flutter/material.dart';

const String _fontName = 'Sofia-pro';

TextStyle lightStyle({required double size, Color color = Colors.black}) {
  return TextStyle(
      fontFamily: _fontName, fontSize: size, color: color, fontWeight: FontWeight.w300);
}

TextStyle regularStyle({required double size, Color color = Colors.black}) {
  return TextStyle(
      fontFamily: _fontName, fontSize: size, color: color, fontWeight: FontWeight.normal);
}

TextStyle mediumStyle({required double size, Color color = Colors.black}) {
  return TextStyle(
      fontFamily: _fontName, fontSize: size, color: color, fontWeight: FontWeight.w500);
}

TextStyle semiBoldStyle({required double size, Color color = Colors.black}) {
  return TextStyle(
      fontFamily: _fontName, fontSize: size, color: color, fontWeight: FontWeight.w600);
}

TextStyle boldStyle(
    {required double size,
    Color color = Colors.black,
    TextDecoration decoration = TextDecoration.none}) {
  return TextStyle(
      fontFamily: _fontName,
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
      decoration: decoration);
}

TextStyle superBoldStyle(
    {required double size, Color color = Colors.black}) {
  return TextStyle(
      fontFamily: _fontName,
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w800);
}
