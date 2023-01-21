import 'package:app_6xperts/app_screens/dashboard.dart';
import 'package:app_6xperts/app_screens/forgot_password.dart';
import 'package:app_6xperts/app_screens/sign_up.dart';
import 'package:app_6xperts/colors.dart';
import 'package:app_6xperts/widgets/bottom_bar.dart';
import 'package:app_6xperts/widgets/button.dart';
import 'package:app_6xperts/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.h),
              // Container(
              //   width: 45.w,
              //   height: 43.h,
              //   decoration: BoxDecoration(
              //     color: primaryGreen,
              //     borderRadius: BorderRadius.circular(12.r),
              //   ),
              // ),

              SizedBox(height: 28.h),
              Image.asset(
                'assets/images/app_logo.png',
                scale: 2,
                color: colorWhite,
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 22.sp,
                  color: tfColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 35.h),
              const TextFieldWidget(
                text: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 20,
                  color: tfColor,
                ),
              ),
              SizedBox(height: 35.h),
              const TextFieldWidget(
                text: 'Password',
                obsecureText: true,
                prefixIcon: Icon(
                  CupertinoIcons.lock,
                  size: 20,
                  color: tfColor,
                ),
              ),
              SizedBox(height: 65.h),
              SizedBox(
                  width: 315.w,
                  height: 58.h,
                  child: PrimaryButton(
                    buttonText: 'Sign in',
                    ontap: () {
                      Get.to(
                        () => BottomBar(),
                        transition: Transition.zoom,
                        duration: Duration(
                          seconds: 1,
                        ),
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => BottomBar()),
                      // );
                    },
                    bgColor: primaryGreen,
                    textColor: colorWhite,
                  )),
              SizedBox(height: 18.h),
              InkWell(
                onTap: () {
                  Get.to(() => ForgotPassword(),
                      transition: Transition.zoom,
                      duration: Duration(seconds: 2));
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const ForgotPassword()),
                  // );
                },
                child: Center(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: tfColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 68.h),
              SizedBox(
                  width: 315.w,
                  height: 58.h,
                  child: PrimaryButton(
                    buttonText: 'Create an account',
                    ontap: () {
                      Get.to(() => SignUp(),
                          transition: Transition.zoom,
                          duration: Duration(seconds: 2));

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const SignUp()),
                      // );
                    },
                    bgColor: const Color(0xFF286053),
                    textColor: primaryGreen,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
