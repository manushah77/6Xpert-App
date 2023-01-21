// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_6xperts/app_screens/add_category.dart';
import 'package:app_6xperts/app_screens/add_customer.dart';
import 'package:app_6xperts/app_screens/add_project.dart';
import 'package:app_6xperts/app_screens/dashboard.dart';
import 'package:app_6xperts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  int? page;
  BottomBar({Key? key, this.page}) : super(key: key);

  @override
  State<BottomBar> createState() => _MainPageState();
}

class _MainPageState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List? _pages;

  @override
  void initState() {
    _pages = [
      Dashboard(),
      AddProject(),
      AddCategory(),
      AddCustomer(),
    ];

    _selectedIndex = widget.page ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SizedBox(
        height: 55.h,
        child: BottomNavigationBar(
          backgroundColor: tGreen,
          elevation: 0,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          selectedItemColor: primaryGreen,
          unselectedItemColor: primaryGreen.withOpacity(0.5),
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.device_laptop), label: 'Add Project'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Add Category'),
            // BottomNavigationBarItem(
            //     icon: Icon(CupertinoIcons.person_fill), label: 'Add Customer'),
          ],
        ),
      ),
      body: _pages![_selectedIndex],
    );
  }
}
