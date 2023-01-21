// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_declarations

import 'package:app_6xperts/app_screens/dashboard.dart';
import 'package:app_6xperts/app_screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 200.h,
      child: Drawer(
        backgroundColor: primaryGreen,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100)),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Dashboard(),
            //       ),
            //     );
            //   },
            //   child: DrawerHeader(
            //     padding: EdgeInsets.zero,
            //     child: UserAccountsDrawerHeader(
            //       margin: EdgeInsets.zero,
            //       decoration: BoxDecoration(),
            //       accountName: Text(
            //         '',
            //         style: TextStyle(
            //           fontWeight: FontWeight.w500,
            //           fontSize: 16.sp,
            //           color: uiDark,
            //         ),
            //       ),
            //       accountEmail: Text(
            //         '',
            //         style: TextStyle(
            //           fontWeight: FontWeight.w500,
            //           fontSize: 12.sp,
            //           color: colorBlack,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 30.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ),
                );
              },
              child: ListTile(
                minLeadingWidth: 16.w,
                leading: Image.asset('assets/icons/projects.png',
                    color: colorBlack, scale: 12),
                title: Text(
                  'Add Project',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: uiDark,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ),
                );
              },
              child: ListTile(
                minLeadingWidth: 16.w,
                leading: Image.asset('assets/icons/category.png',
                    color: colorBlack, scale: 15),
                title: Text(
                  'Add Category',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: uiDark,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ),
                );
              },
              child: ListTile(
                minLeadingWidth: 16.w,
                leading: Icon(
                  CupertinoIcons.person_fill,
                  color: uiDark,
                ),
                title: Text(
                  'Add Customer',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: uiDark,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushReplacement(
            //         context, MaterialPageRoute(builder: (context) => Login()));
            //   },
            //   child: ListTile(
            //     minLeadingWidth: 16.w,
            //     leading: Icon(Icons.logout, size: 25, color: colorBlack),
            //     title: Text(
            //       'Log Out',
            //       style: TextStyle(
            //         fontSize: 16.sp,
            //         fontWeight: FontWeight.w500,
            //         color: primaryGreen,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  //checking chat room
}
