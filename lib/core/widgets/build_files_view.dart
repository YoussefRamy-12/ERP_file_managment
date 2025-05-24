import 'package:file_manager/core/widgets/bottom_sheet.dart';
import 'package:file_manager/core/widgets/item_build.dart';
import 'package:file_manager/feature/files&folders/files_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildFilesView(bool fileIsGridView, List<FileItem> files) {
    return fileIsGridView
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 3 / 1.3,
            ),
            itemCount: files.length,
            itemBuilder: (context, index) => buildFileItem(context,files[index]),
          )
        : ListView.separated(
            itemCount: files.length,
            separatorBuilder: (_, __) => SizedBox(height: 10.h),
            itemBuilder: (context, index) => buildFileItem(context,files[index]),
          );
}
Widget buildFileItem(context ,FileItem file) {
    return FileItemWidget(
      file: file,
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Opening ${file.name}'),
            duration: Duration(seconds: 2),
          ),
        );
      },
      onLongPress: () {
        bottomSheet(context,file);
      },
      onMorePressed: () {
        bottomSheet(context,file);
      },
    );
}