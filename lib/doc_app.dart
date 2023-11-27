import 'package:doctor_registeration/core/routes/app_router.dart';
import 'package:doctor_registeration/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/route.dart';

//فصلت ال main عن ال client app
class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 312),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
