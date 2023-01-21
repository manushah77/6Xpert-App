import 'package:app_6xperts/app_screens/login.dart';
import 'package:app_6xperts/colors.dart';
import 'package:app_6xperts/widgets/button.dart';
import 'package:app_6xperts/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: primaryGreen,
                size: 25,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                Container(
                  width: 45.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    color: primaryGreen,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Image.asset(
                    'assets/images/app_logo.png',
                    color: colorWhite,
                  ),
                ),
                SizedBox(height: 28.h),
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 42.sp,
                    color: colorWhite,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'to start working',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: tfColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 35.h),
                const TextFieldWidget(
                  text: 'Enter email address',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                SizedBox(height: 35.h),
                const TextFieldWidget(
                  text: 'Enter password',
                  obsecureText: true,
                  prefixIcon: Icon(
                    CupertinoIcons.lock,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                SizedBox(height: 35.h),
                const TextFieldWidget(
                  text: 'Confirm password',
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
                      buttonText: 'Sign up',
                      ontap: () {},
                      bgColor: primaryGreen,
                      textColor: colorWhite,
                    )),
                SizedBox(height: 60.h),
                Center(
                  child: Wrap(
                    children: [
                      Text(
                        'Already have an account?  ',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: tfColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(
                                  () => Login(),
                              transition: Transition.zoom,
                              duration: Duration(seconds: 2)
                          );
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const Login(),
                          //   ),
                          // );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14.sp,
                            color: primaryGreen,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
