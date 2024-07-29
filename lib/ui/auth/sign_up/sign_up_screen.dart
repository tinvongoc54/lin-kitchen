import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lin_kitchen/di/injection.dart';
import 'package:lin_kitchen/resource/assets/app_assets.dart';
import 'package:lin_kitchen/resource/theme/app_colors.dart';
import 'package:lin_kitchen/resource/theme/app_text_styles.dart';
import 'package:lin_kitchen/ui/auth/sign_up/bloc/sign_up_cubit.dart';
import 'package:lin_kitchen/widgets/app_button.dart';
import 'package:lin_kitchen/widgets/app_input_field.dart';

import '../../../widgets/app_bar_custom.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => getIt.get<SignUpCubit>(), child: const SignUpPage());
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: -20,
                left: -50,
                child: Container(
                    width: 96,
                    height: 96,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200), color: AppColors.primary),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100), color: Colors.white),
                    ))),
            Positioned(
                top: -100,
                right: -100,
                child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400), color: AppColors.primary))),
            Positioned(
                top: -90,
                left: 0,
                child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400), color: AppColors.primaryLight))),
            Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(top: 110, left: 26, right: 26, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Sign Up', style: semiBoldStyle(size: 36))),
                    const SizedBox(height: 30),
                    const AppInputField(label: 'Full name', hint: 'Your full name'),
                    const SizedBox(height: 20),
                    const AppInputField(label: 'E-mail', hint: 'Your email or phone'),
                    const SizedBox(height: 20),
                    const AppInputField(label: 'Password', hint: 'Password', isPassword: true),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: AppButton(text: 'SIGN UP', onPressed: () {}),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? ',
                            style: mediumStyle(size: 14, color: AppColors.grayDark)),
                        Text('Login', style: mediumStyle(size: 14, color: AppColors.primary))
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Expanded(child: Divider(height: 1, color: AppColors.shadow)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('sign up with',
                              style: mediumStyle(size: 14, color: AppColors.grayDark)),
                        ),
                        const Expanded(child: Divider(height: 1, color: AppColors.shadow)),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                            child: AppButton(
                                text: 'Facebook',
                                textStyle: mediumStyle(size: 14, color: Colors.black),
                                color: Colors.white,
                                prefixIcon: SvgPicture.asset(AppAssets.icFacebook),
                                onPressed: () {})),
                        const SizedBox(width: 20),
                        Expanded(
                            child: AppButton(
                                text: 'Google',
                                textStyle: mediumStyle(size: 14, color: Colors.black),
                                color: Colors.white,
                                prefixIcon: SizedBox(width: 40, height: 40, child: SvgPicture.asset(AppAssets.icGoogle)),
                                onPressed: () {}))
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Positioned(top: 0, left: 0, right: 0, child: AppBarCustom()),
          ],
        ),
      );
    });
  }
}
