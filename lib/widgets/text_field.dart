import 'package:app_6xperts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatefulWidget {
  final String text;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obsecureText;
  final Function(String?)? vld;
  final PageController;

  const TextFieldWidget({
    Key? key,
    required this.text,
    this.prefixIcon,
    this.vld,
    this.PageController,
    this.obsecureText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecureText ?? false,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: tfColor,
      ),
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: tfColor),
        ),
        hintText: widget.text,
        hintStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: tfColor,
        ),
      ),
      validator: (_) => widget.vld!(_),
      controller: widget.PageController,
    );
  }
}
