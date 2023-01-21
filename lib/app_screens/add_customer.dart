import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import '../widgets/button.dart';
import '../widgets/text_field.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Add Customer',
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
                  text: 'Name',
                  prefixIcon: Icon(
                    Icons.person,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                SizedBox(height: 20.h),
                const TextFieldWidget(
                  text: 'Country',
                  prefixIcon: Icon(
                    CupertinoIcons.globe,
                    size: 20,
                    color: tfColor,
                  ),
                  // suffixIcon: Icon(
                  //   Icons.arrow_downward_sharp,
                  //   size: 20,
                  //   color: tfColor,
                  // ),
                ),
                SizedBox(height: 20.h),
                const TextFieldWidget(
                  text: 'Phone',
                  prefixIcon: Icon(
                    CupertinoIcons.phone,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  width: 315.w,
                  height: 58.h,
                  child: PrimaryButton(
                      buttonText: 'Add customer',
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
