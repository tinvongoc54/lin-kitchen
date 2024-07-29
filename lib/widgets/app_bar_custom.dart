import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lin_kitchen/resource/theme/app_colors.dart';
import 'package:lin_kitchen/widgets/app_button.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 80,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(offset: Offset(3, 3), color: AppColors.gray, blurRadius: 5)
                  ]
                ),
                child: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20,)),
          )
        ],
      ),
    );
  }
}
