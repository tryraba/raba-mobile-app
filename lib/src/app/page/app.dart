import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:raba_mobile/src/app/router/app_router.dart';
import 'package:raba_mobile/src/core/themes/app_theme.dart';
import 'package:raba_mobile/src/shared/widgets/dismiss_keyboard.dart';

class App extends StatelessWidget {
  App({super.key, this.initialPage});

  final Widget? initialPage;

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) {
          if (initialPage != null) {
            return MaterialApp(
              home: initialPage,
              theme: AppTheme.lightTheme,
              debugShowCheckedModeBanner: false,
            );
          }

          return MaterialApp.router(
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            // localizationsDelegates: AppLocalizations.localizationsDelegates,
            // supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
