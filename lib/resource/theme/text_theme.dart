import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.sofia(
          fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.black),
      displayMedium: GoogleFonts.sofia(
          fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black),
      displaySmall: GoogleFonts.sofia(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
      headlineMedium: GoogleFonts.sofia(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black),
      headlineSmall: GoogleFonts.sofia(
          fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.black),

      titleLarge: GoogleFonts.sofia(
          fontSize: 32.0, fontWeight: FontWeight.w600, color: AppColors.black),
      titleMedium: GoogleFonts.sofia(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.black),
      titleSmall: GoogleFonts.sofia(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.black));

  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.sofia(
          fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.white),
      displayMedium: GoogleFonts.sofia(
          fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.white),
      displaySmall: GoogleFonts.sofia(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineMedium: GoogleFonts.sofia(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineSmall: GoogleFonts.sofia(
          fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.white),

      titleLarge: GoogleFonts.sofia(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.white),
      titleMedium: GoogleFonts.sofia(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.white),
      titleSmall: GoogleFonts.sofia(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.white));
}
