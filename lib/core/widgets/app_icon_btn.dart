import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_manager/core/theming/colors.dart';

class AppIconBtn extends StatelessWidget {
  final double? borderRadius;
  final Color? backGroundColor;
  final Color? iconColor;
  final Color? borderColor;  // New border color parameter
  final double? borderWidth; // New border width parameter
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? iconSize;
  final Icon icon;
  final VoidCallback onPressed;

  const AppIconBtn({
    super.key,
    this.borderRadius,
    this.backGroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.icon,
    required this.onPressed,
    this.borderColor,    // Add to constructor
    this.borderWidth = 1.0,  // Default border width
    this.iconColor, 
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 17.0),
            // Add border configuration
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 1.0,
            ),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backGroundColor ?? MyColors.mainBlue
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12.w,
            vertical: verticalPadding ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth ?? 301, buttonHeight ?? 56.h),
        ),
        // Add visual feedback for pressed state
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.pressed)) {
              return (borderColor ?? MyColors.mainBlue).withOpacity(0.1);
            }
            return Colors.transparent;
          },
        ),
      ),
      icon: icon,
      color: iconColor, 
      iconSize: iconSize,
    );
  }
}