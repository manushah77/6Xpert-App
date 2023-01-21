import 'package:app_6xperts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function ontap;
  final Color textColor;
  final Color bgColor;
  Color? color;
  PrimaryButton(
      {Key? key,
      required this.buttonText,
      required this.ontap,
      this.color,
      required this.textColor,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            offset: Offset(0.0, 2.0),
            blurRadius: 4,
          ),
        ],
      ),
      child: OutlinedButton(
        onPressed: () {
          ontap();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(bgColor),
          foregroundColor: MaterialStateProperty.all(textColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 14.h),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
