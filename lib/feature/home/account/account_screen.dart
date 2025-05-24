import 'package:file_manager/feature/home/account/used_space_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_manager/core/theming/colors.dart';
import 'package:file_manager/core/theming/styles.dart';
import 'package:file_manager/feature/home/account/my_account_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myWhite,
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
          "Profile",
          style: MyTextStyle.font18Bold(context),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications,
                    color: Colors.black, size: 30),
                onPressed: () {
                  // Handle notification button press
                },
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "9+",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 40.r,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Ferdinand Sinaga",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Ferdinand@gmail.com",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30.h),
            _buildListTile(
              context,
              icon: Icons.person_outline,
              title: "My Account",
              onTap: () {
                // Handle My Account tap
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAccountScreen()));
              },
            ),
            SizedBox(height: 10.h),
            _buildListTile(
              context,
              icon: Icons.pie_chart_outline,
              title: "Used Space",
              onTap: () {
                // Handle Used Space tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UsedSpaceScreen()),
                );
              },
            ),
            SizedBox(height: 10.h),
            _buildListTile(
              context,
              icon: Icons.help_outline,
              title: "Help",
              onTap: () {
                // Handle Help & Center tap
              },
            ),
            SizedBox(height: 10.h),
            _buildListTile(
              context,
              icon: Icons.logout_outlined,
              title: "Logout",
              onTap: () {
                // Handle Logout tap
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(

      leading: Icon(icon,
          color: icon == Icons.logout_outlined ? Colors.red : Colors.blue,
          size: 24.r),
      title: Text(
        title,
        style: TextStyle(fontSize: 16.sp, color: Colors.black),
      ),
      trailing: icon == Icons.logout_outlined
          ? null
          : const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: onTap,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
        side: BorderSide(color: Colors.grey.shade300, width: 1.w),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
    );
  }
}
