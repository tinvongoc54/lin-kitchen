
import 'package:lin_kitchen/ui/welcome/bloc/welcome_cubit.dart';

import '../../ui/bloc/app/app_cubit.dart';
import '../../ui/bloc/localization/localization_cubit.dart';
import '../injection.dart';

abstract class CubitModule {
  static Future<void> initModule() async {
    getIt
      ..registerFactory<AppCubit>(() {
        return AppCubit();
      })
      ..registerFactory<LocalizationCubit>(() {
        return LocalizationCubit();
      })
      ..registerFactory<WelcomeCubit>(() {
        return WelcomeCubit();
      });
  }
}
