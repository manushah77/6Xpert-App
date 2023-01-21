import 'package:app_6xperts/app_screens/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assets/images/app_logo.png',
            scale: 3,
            color: colorWhite,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              );
            },
            icon: const Icon(
              Icons.logout,
              color: colorWhite,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        //drawer: MyDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.sp),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: tfColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$ 91,485.00",
                        style: TextStyle(
                          fontSize: 26.sp,
                          color: primaryGreen,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Expense',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: tfColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "\$ 81,000.00",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 26.sp,
                            color: primaryGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {
                      showDialog(
                          barrierColor: colorBlack.withOpacity(0.3),
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: bgColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: SizedBox(
                                height: 240.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 40.w),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      Text(
                                        "Total Projects",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: tfColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "SEO",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "20",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "UI",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "30",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "WordPress",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "50",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Flutter",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "70",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Other",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tpink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "40",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primarPink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: 319.w,
                      height: 105.h,
                      decoration: BoxDecoration(
                        color: tGreen,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Row(
                          children: [
                            Container(
                              width: 59.w,
                              height: 57.h,
                              decoration: BoxDecoration(
                                color: primaryGreen,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Image.asset(
                                'assets/icons/projects.png',
                                color: tGreen,
                                scale: 14,
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Projects",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryGreen,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "closed",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryGreen.withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 59.w),
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: primaryGreen.withOpacity(0.3),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: primaryGreen, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  "15",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: primaryGreen,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {
                      showDialog(
                          barrierColor: colorBlack.withOpacity(0.3),
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: bgColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: SizedBox(
                                height: 240.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 40.w),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      Text(
                                        "Current Projects",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: tfColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "SEO",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "20",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "UI",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "30",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "WordPress",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "50",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Flutter",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "70",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Other",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tpink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "40",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primarPink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: 319.w,
                      height: 105.h,
                      decoration: BoxDecoration(
                        color: tYellow,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Row(
                          children: [
                            Container(
                              width: 59.w,
                              height: 57.h,
                              decoration: BoxDecoration(
                                color: primaryYellow,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Image.asset(
                                'assets/icons/current.png',
                                color: tYellow,
                                scale: 14,
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Current Projects",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryYellow,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "working / open",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryYellow.withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 39.w),
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: primaryYellow.withOpacity(0.3),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: primaryYellow, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: primaryYellow,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {
                      showDialog(
                          barrierColor: colorBlack.withOpacity(0.3),
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: bgColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: SizedBox(
                                height: 240.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 40.w),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      Text(
                                        "Upcoming Projects",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: tfColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "SEO",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "20",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "UI",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "30",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "WordPress",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "50",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Flutter",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "70",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Other",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tpink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "40",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primarPink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: 319.w,
                      height: 105.h,
                      decoration: BoxDecoration(
                        color: tRed,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Row(
                          children: [
                            Container(
                              width: 59.w,
                              height: 57.h,
                              decoration: BoxDecoration(
                                color: primaryRed,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Image.asset(
                                'assets/icons/upcoming.png',
                                color: tRed,
                                scale: 14,
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Upcoming Projects",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryRed,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "expected",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryRed.withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 19.w),
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: primaryRed.withOpacity(0.3),
                                shape: BoxShape.circle,
                                border: Border.all(color: primaryRed, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: primaryRed,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {
                      showDialog(
                          barrierColor: colorBlack.withOpacity(0.3),
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: bgColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: SizedBox(
                                height: 240.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 40.w),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      Text(
                                        "Payment Due",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: tfColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "SEO",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "200\$",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryGreen,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "UI",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "350\$",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryYellow,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "WordPress",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "500\$",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryRed,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Flutter",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "700\$",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primaryBlue,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Other",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: tpink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "450\$",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: primarPink,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: 319.w,
                      height: 105.h,
                      decoration: BoxDecoration(
                        color: tBlue,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Row(
                          children: [
                            Container(
                              width: 59.w,
                              height: 57.h,
                              decoration: BoxDecoration(
                                color: primaryBlue,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Image.asset(
                                'assets/icons/pay.png',
                                color: tBlue,
                                scale: 14,
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payment Due",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryBlue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "clients",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryBlue.withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 53.w),
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: primaryBlue.withOpacity(0.3),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: primaryBlue, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: primaryBlue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
