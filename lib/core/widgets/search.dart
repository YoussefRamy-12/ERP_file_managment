import 'package:file_manager/core/widgets/app_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search in App",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        AppIconBtn(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
          backGroundColor: Colors.transparent,
          borderColor: Colors.grey,
          buttonWidth: 40.w,
          buttonHeight: 40.h,
          verticalPadding: 0,
          horizontalPadding: 0,
          borderRadius: 13,
        ),
      ],
    );
  }
}
