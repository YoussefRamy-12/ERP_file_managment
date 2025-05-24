import 'package:file_manager/feature/files&folders/files_data.dart';
import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';

  class FileItemWidget extends StatelessWidget {
    final FileItem file;
    final VoidCallback onTap;
    final VoidCallback onLongPress;
    final VoidCallback onMorePressed;

    const FileItemWidget({
      Key? key,
      required this.file,
      required this.onTap,
      required this.onLongPress,
      required this.onMorePressed,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onLongPress: onLongPress,
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(file.icon,
                  size: 40,
                  color: file.icon == Icons.folder ? Colors.blue : Colors.red),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      file.name,
                      style:
                          TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Modified ${file.date}",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: onMorePressed,
                icon: Icon(Icons.more_vert, color: Colors.grey),
              )
            ],
          ),
        ),
      );
    }
  }