import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsedSpaceScreen extends StatelessWidget {
  const UsedSpaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Used Space",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 150.r,
                      width: 150.r,
                      child: CircularProgressIndicator(
                        value: 5.3 / 10, // Used space percentage
                        strokeWidth: 12.w,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                    Text(
                      "5.30 GB",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\n\nof 10 GB",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              _buildSpaceInfoRow(
                context,
                icon: Icons.video_library,
                label: "Videos",
                used: 2,
                total: 10,
                color: Colors.blue,
              ),
              SizedBox(height: 10.h),
              _buildSpaceInfoRow(
                context,
                icon: Icons.image,
                label: "Images",
                used: 3,
                total: 10,
                color: Colors.pink,
              ),
              SizedBox(height: 10.h),
              _buildSpaceInfoRow(
                context,
                icon: Icons.insert_drive_file,
                label: "Documents",
                used: 0.3,
                total: 10,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpaceInfoRow(BuildContext context,
      {required IconData icon,
      required String label,
      required double used,
      required double total,
      required Color color}) {
    return Card(
      shadowColor: Colors.blue,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(icon, color: color, size: 30.r),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  LinearProgressIndicator(
                    value: used / total,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              "${used.toStringAsFixed(1)} GB",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
