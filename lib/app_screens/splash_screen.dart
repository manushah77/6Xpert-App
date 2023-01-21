// ignore_for_file: prefer_const_constructors

import 'package:app_6xperts/app_screens/login.dart';
import 'package:app_6xperts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.darken),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 135.h,
            ),
            Text(
              'Powered by',
              style: TextStyle(
                fontSize: 16.sp,
                color: colorWhite,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset(
              'assets/images/app_logo.png',
              scale: 1.5,
              color: colorWhite,
            ),
          ],
        ),
      ),
    );
  }
}
