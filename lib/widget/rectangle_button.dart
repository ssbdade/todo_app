import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/fonts_manager.dart';

class RectangleButton extends StatefulWidget {
  const RectangleButton(
      {Key? key,
      this.buttonColor,
      this.titleColor,
      required this.title,
      this.onTap,
      this.padding,
      this.radius})
      : super(key: key);

  final Color? buttonColor;
  final Color? titleColor;
  final String title;
  final Function? onTap;
  final EdgeInsets? padding;
  final double? radius;

  @override
  State<RectangleButton> createState() => _RectangleButtonState();
}

class _RectangleButtonState extends State<RectangleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap!.call();
      },
      child: Container(
        padding: widget.padding ?? EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(widget.radius ?? 12.h),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyleManager.button.copyWith(
              color: widget.titleColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
