import 'package:flutter/material.dart';
import 'package:lin_kitchen/resource/theme/app_text_styles.dart';
import 'package:lin_kitchen/resource/theme/theme.dart';

import '../resource/theme/app_colors.dart';

class AppInputField extends StatefulWidget {
  const AppInputField(
      {super.key,
      required this.label,
      required this.hint,
      this.icon,
      this.isPassword = false,
      this.controller,
      this.backgroundColor,
      this.hintStyle,
      this.contentStyle});

  final String label;
  final String hint;
  final IconData? icon;
  final bool isPassword;
  final TextEditingController? controller;
  final Color? backgroundColor;
  final TextStyle? hintStyle;
  final TextStyle? contentStyle;

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.label.isNotEmpty
            ? Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(widget.label, style: regularStyle(size: 16, color: AppColors.grayDark)),
              )
            : const SizedBox.shrink(),
        Container(
          decoration: BoxDecoration(
              color: widget.backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset(5, 5),
                    color: AppColors.gray),
              ]),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                hintText: widget.hint,
                hintStyle: widget.hintStyle ?? regularStyle(size: 17, color: AppColors.shadow),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColors.shadow),
                ),
                suffixIcon: widget.isPassword
                    ? IconButton(
                        icon: Icon(_passwordVisible ? Icons.visibility_off : Icons.visibility,
                            color: AppColors.grayDark),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      )
                    : const SizedBox.shrink()),
            obscureText: !_passwordVisible,
            controller: widget.controller,
            style: widget.contentStyle ?? regularStyle(size: 17),
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ],
    );
  }
}
