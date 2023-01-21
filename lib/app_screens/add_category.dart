import 'package:app_6xperts/widgets/button.dart';
import 'package:app_6xperts/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Add Category',
            style: TextStyle(
              fontSize: 26.sp,
              fontWeight: FontWeight.w600,
              color: primaryGreen,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const TextFieldWidget(
                  text: 'Category name',
                  prefixIcon: Icon(
                    Icons.category,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  width: 315.w,
                  height: 58.h,
                  child: PrimaryButton(
                      buttonText: 'Add category',
                      ontap: () {},
                      textColor: colorWhite,
                      bgColor: primaryGreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
