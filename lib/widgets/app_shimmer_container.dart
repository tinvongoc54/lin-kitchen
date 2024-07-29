import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../resource/theme/app_colors.dart';

class AppShimmerContainer extends StatelessWidget {
  const AppShimmerContainer(
      {super.key,
      required this.height,
      this.width = double.infinity,
      this.baseColor,
      this.highlightColor});

  final double height;
  final double? width;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: baseColor ?? AppColors.gray,
        highlightColor: highlightColor ?? Colors.white,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: AppColors.gray, borderRadius: BorderRadius.circular(10)),
        ));
  }
}
