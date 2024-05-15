import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';

Widget buildBigButton({
  final EdgeInsetsGeometry? margin,
  final Color? buttonColor,
  final Color? textColor,
  final Color? builderColor,
  required final String text,
  final GestureTapCallback? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 325.w,
        margin: margin,
        decoration: BoxDecoration(
          border: Border.all(
            color: builderColor ?? Colors.transparent,
          ),
          color: buttonColor ?? AppColors.primaryElement,
          borderRadius: BorderRadius.all(
            Radius.circular(15.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 1,
              spreadRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              color: textColor ?? AppColors.primaryBackground,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
