import 'package:app_6xperts/app_screens/splash_screen.dart';
import 'package:app_6xperts/colors.dart';
import 'package:app_6xperts/primary_swatch.dart';
import 'package:app_6xperts/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //canvasColor: bgColor,
          primarySwatch: buildMaterialColor(primaryGreen),
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home:  SplashScreen(),
      ),
    );
  }
}
