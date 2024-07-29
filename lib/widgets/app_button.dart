import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lin_kitchen/resource/theme/app_text_styles.dart';

import '../resource/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.text,
      this.textStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.decoration,
      this.width,
      this.height,
      this.color,
      required this.onPressed});

  final String text;
  final TextStyle? textStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BoxDecoration? decoration;
  final double? width;
  final double? height;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 60,
      alignment: Alignment.center,
      decoration: decoration ?? BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: const Offset(5, 5),
                color: color == null ? AppColors.primaryLight : AppColors.gray),
          ]),
      child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            onPressed.call();
          },
          child: _buildButton()),
    );
  }

  Widget _buildButton() {
    if (prefixIcon != null) {
      return _buildButtonWithPrefix();
    }
    if (suffixIcon != null) {
      return _buildButtonWithSuffix();
    }
    return Text(text, style: textStyle ?? semiBoldStyle(size: 15, color: Colors.white));
  }

  Row _buildButtonWithPrefix() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        prefixIcon!,
        const SizedBox(width: 10),
        Text(text, style: textStyle ?? semiBoldStyle(size: 15, color: Colors.white))
      ],
    );
  }

  Row _buildButtonWithSuffix() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 1),
        Text(text, style: textStyle ?? semiBoldStyle(size: 15, color: Colors.white)),
        suffixIcon!
      ],
    );
  }
}
