import 'package:flutter/material.dart';
import 'package:lin_kitchen/resources/theme/app_theme.dart';

import '../resources/localization/l10n.dart';
import '../router/router.dart';

class LinKitchenMaterialApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigationKey;
  final Locale? locale;

  const LinKitchenMaterialApp({Key? key, required this.navigationKey, this.locale})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [AppTranslations.delegate],
      navigatorKey: navigationKey,
      title: 'Pets Care App',
      locale: locale,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // Obtain the current media query information.
        final mediaQueryData = MediaQuery.of(context);

        return MediaQuery(
          // Set the default textScaleFactor to 1.0 for
          // the whole subtree.
          data: mediaQueryData.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      themeMode: ThemeMode.light,
      theme: AppTheme.light(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}