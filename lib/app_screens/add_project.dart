import 'package:animations/animations.dart';
import 'package:app_6xperts/widgets/text_field.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../widgets/button.dart';

class AddProject extends StatefulWidget {
  const AddProject({super.key});

  @override
  State<AddProject> createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {


  final List<String> items = [
    'SEO',
    'UI',
    'WordPress',
    'Flutter',
    'Other',
  ];
  String? selectedValue;

  final List<String> items2 = [
    'Upcoming',
    'Working',
    'Due',
    'Closed',
  ];
  String? selectedValue2;

  TextEditingController openDate = TextEditingController();
  TextEditingController endingDate = TextEditingController();
   Country? country;

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Add Project',
            style: TextStyle(
              fontSize: 26.sp,
              fontWeight: FontWeight.w600,
              color: primaryGreen,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      barrierColor: colorBlack.withOpacity(0.5),
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: bgColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: SizedBox(
                            height: 380.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Column(
                                children: [
                                  SizedBox(height: 20.h),
                                  Text(
                                    "Add Customer",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: primaryGreen,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
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
                                  TextFieldWidget(
                                    // text: '${country!.displayName.isEmpty ? 'Country' : country!.displayName}',
                                    text: 'Country',
                                    prefixIcon: const Icon(
                                      CupertinoIcons.globe,
                                      size: 20,
                                      color: tfColor,
                                    ),
                                    // suffixIcon: IconButton(
                                    //     onPressed: () {
                                    //       showCountryPicker(
                                    //         context: context,
                                    //         showPhoneCode:
                                    //         true, // optional. Shows phone code before the country name.
                                    //         onSelect: (c) {
                                    //          c = country!;
                                    //         },
                                    //       );
                                    //     },
                                    //     icon: const Icon(
                                    //       Icons.arrow_downward_sharp,
                                    //       size: 20,//       color: tfColor,
                                    //     )),
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
                        );
                      });
                },
                icon: const Icon(
                  Icons.add,
                  color: primaryGreen,
                  size: 25,
                )),
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const TextFieldWidget(
                  text: 'Project name',
                  prefixIcon: Icon(
                    CupertinoIcons.device_laptop,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                const SizedBox(height: 30),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: tfColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: tfColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonPadding: EdgeInsets.only(left: 18.w),
                    buttonHeight: 40,
                    buttonWidth: double.infinity,
                    buttonDecoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tfColor,
                          width: 1,
                        ),
                      ),
                    ),
                    itemHeight: 40,
                    dropdownDecoration: const BoxDecoration(
                      color: bgColor,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Project Status',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: tfColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    items: items2
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: tfColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue2,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value as String;
                      });
                    },
                    buttonPadding: EdgeInsets.only(left: 18.w),
                    buttonHeight: 40,
                    buttonWidth: double.infinity,
                    buttonDecoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tfColor,
                          width: 1,
                        ),
                      ),
                    ),
                    itemHeight: 40,
                    dropdownDecoration: const BoxDecoration(
                      color: bgColor,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const TextFieldWidget(
                  text: 'Price',
                  prefixIcon: Icon(
                    CupertinoIcons.money_dollar,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                const SizedBox(height: 20),
                const TextFieldWidget(
                  text: 'Developer name',
                  prefixIcon: Icon(
                    CupertinoIcons.person,
                    size: 20,
                    color: tfColor,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: tfColor,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.calendar,
                      size: 20,
                      color: tfColor,
                    ),
                    hintText: 'Open date',
                    hintStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: tfColor,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: tfColor),
                    ),
                  ),
                  controller: openDate,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));

                    if (pickedDate != null) {
                      openDate.text = pickedDate.toString();
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: tfColor,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.calendar,
                      size: 20,
                      color: tfColor,
                    ),
                    hintText: 'Deadline',
                    hintStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: tfColor,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: tfColor),
                    ),
                  ),
                  controller: endingDate,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));

                    if (pickedDate != null) {
                      endingDate.text = pickedDate.toString();
                    }
                  },
                ),
                SizedBox(height: 60.h),
                SizedBox(
                  width: 315.w,
                  height: 58.h,
                  child: PrimaryButton(
                      buttonText: 'Add project',
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

  showAlertDialog(
    BuildContext context,
  ) {
    showDialog(
        barrierColor: colorBlack.withOpacity(0.5),
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: SizedBox(
              height: 380.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      "Add Customer",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: primaryGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
                    TextFieldWidget(
                      text: 'Country',
                      prefixIcon: const Icon(
                        CupertinoIcons.globe,
                        size: 20,
                        color: tfColor,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode: true,
                              // optional. Shows phone code before the country name.
                              onSelect: (Country country) {
                                print('Select country: ${country.displayName}');
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_downward_sharp,
                            size: 20,
                            color: tfColor,
                          )),
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
          );
        });
    return CircularProgressIndicator();
  }
}
