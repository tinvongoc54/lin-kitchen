import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lin_kitchen/di/injection.dart';
import 'package:lin_kitchen/resource/assets/app_assets.dart';
import 'package:lin_kitchen/resource/theme/app_text_styles.dart';
import 'package:lin_kitchen/resource/theme/app_colors.dart';
import 'package:lin_kitchen/ui/welcome/bloc/welcome_cubit.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => getIt.get<WelcomeCubit>(), child: const WelcomePage());
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeCubit, WelcomeState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(child: Image.asset(AppAssets.imgBgWelcome, fit: BoxFit.fill)),
              Container(
                decoration: const BoxDecoration(gradient: AppColors.welcomeGradient),
              ),
              Positioned(
                top: 150,
                left: 20,
                right: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome to', style: boldStyle(size: 50, color: Colors.black)),
                    Text('ChamienFood', style: superBoldStyle(size: 50, color: AppColors.primary)),
                    Text('Your favourite foods delivered\nfast at your door.',
                        style: regularStyle(size: 17, color: AppColors.blueDark))
                  ],
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Expanded(child: Divider(height: 1, color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('sign in with',
                              style: mediumStyle(size: 16, color: Colors.white)),
                        ),
                        const Expanded(child: Divider(height: 1, color: Colors.white)),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.circular(25)),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppAssets.icFacebook),
                                const SizedBox(width: 10),
                                Text('Facebook', style: mediumStyle(size: 14))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.circular(25)),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppAssets.icGoogle),
                                const SizedBox(width: 10),
                                Text('Google', style: mediumStyle(size: 14))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 18),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          color: AppColors.whiteOpa40,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text('Start with email or phone',
                          style: mediumStyle(size: 17, color: Colors.white)),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?  ',
                            style: mediumStyle(size: 16, color: Colors.white)),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Text(
                            'Sign In',
                            style: boldStyle(
                                size: 16,
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
