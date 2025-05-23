import 'package:file_manager/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class floating_item extends StatelessWidget
 {
  const floating_item({
    super.key,
    required this.context,
    required this.icon,
    required this.label,
  });

  final BuildContext context;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(15.w),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 30.w, color: Colors.black),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: MyTextStyle.font12RegularGrey(context),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}