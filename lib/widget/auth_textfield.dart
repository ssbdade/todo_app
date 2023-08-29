import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart';
import '../const/fonts_manager.dart';
import '../gen/assets.gen.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    Key? key,
    this.hintText,
    this.isPwd = false,
    required this.controller,
    required this.validator,
  }) : super(key: key);
  final String? hintText;
  final bool? isPwd;
  final TextEditingController controller;
  final Function() validator;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isHidden = true;

  buildSuffixIcon() {
    return InkWell(
      onTap: () {
        isHidden = !isHidden;
        setState(() {});
      },
      child: SizedBox(
        height: 20.h,
        width: 20.w,
        child: Padding(
          padding: EdgeInsets.all(10.r),
          child: !isHidden
              ? Assets.images.eye.svg(
                  allowDrawingOutsideViewBox: false,
                  color: AppColors.black27text,
                )
              : Assets.images.eyeSlash.svg(
                  color: AppColors.black27text,
                  allowDrawingOutsideViewBox: false,
                ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      validator: (value) => widget.validator(),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyleManager.body1.copyWith(
          color: AppColors.black27text,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.black27,
          ),
        ),
        suffixIcon: widget.isPwd! ? buildSuffixIcon() : const SizedBox.shrink(),
      ),
      obscureText: widget.isPwd! ? isHidden : false,
      style: TextStyleManager.body1,
    );
  }
}
