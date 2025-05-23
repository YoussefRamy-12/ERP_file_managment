import 'package:file_manager/core/theming/colors.dart';
import 'package:file_manager/core/widgets/floating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,

      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(90.r),
        ),
        backgroundColor: MyColors.mainBlue,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
            ),
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(20.w),
                child: Wrap(
                  spacing: 20.w,
                  runSpacing: 20.h,
                  children: [
                    floating_item(context: context, icon: Icons.camera_alt_outlined, label: "Scan"),
                    floating_item(context: context, icon: Icons.upload_file_outlined, label: "Upload"),
                    floating_item(context: context, icon: Icons.folder_open_outlined, label: "Folder"),
                    floating_item(context: context, icon: Icons.description_outlined, label: "Docs"),
                    floating_item(context: context, icon: Icons.table_chart_outlined, label: "Sheets"),
                    floating_item(context: context, icon: Icons.slideshow_outlined, label: "Slides"),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add, size: 30.w, color: Colors.white),
      ),
    );
  }
}