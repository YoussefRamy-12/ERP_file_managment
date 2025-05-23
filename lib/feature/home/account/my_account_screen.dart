import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_manager/core/theming/colors.dart';
import 'package:file_manager/core/theming/styles.dart';
import 'package:file_manager/core/widgets/app_text_btn.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool _isPasswordVisible = true;
  bool _isConfirmationPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBackGround,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "My Account",
          style: MyTextStyle.font18Bold(context, Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.person,
                      size: 50.r,
                      color: Colors.grey[700],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10.w,
                    child: CircleAvatar(
                      radius: 15.r,
                      backgroundColor: MyColors.myLightGreen,
                      child: Icon(
                        Icons.edit,
                        size: 15.r,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              _buildTextField(
                label: "Full Name",
                hintText: "Ferdinand Sinaga",
                isPassword: false,
              ),
              SizedBox(height: 20.h),
              _buildTextField(
                label: "Email",
                hintText: "ferdinand@gmail.com",
                isPassword: false,
              ),
              SizedBox(height: 20.h),
              _buildTextField(
                label: "Password",
                // hintText: "********",
                isPassword: true,
                PasswordVisible: _isPasswordVisible,
              ),
              SizedBox(height: 20.h),
              _buildTextField(
                label: "Repeat Password",
                // hintText: "********",
                isPassword: true,
                PasswordVisible: _isConfirmationPasswordVisible,
              ),
              SizedBox(height: 30.h),
              AppTextBtn(
                buttonText: "Update Information",
                backGroundColor: MyColors.myLightGreen,
                textStyle: MyTextStyle.font16SemiBold(context),
                borderRadius: 10.r,
                buttonWidth: 400.w,
                onPressed: () {
                  // Handle update information button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    String? hintText,
    required bool isPassword,
    bool? PasswordVisible
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   label,
        //   style: TextStyle(fontSize: 14.sp, color: Colors.grey),
        // ),
        SizedBox(height: 5.h),
        TextField(
            decoration: InputDecoration(
            floatingLabelStyle: TextStyle(
              color: MyColors.myLightGreen,
              fontSize: 18.sp,
            ),
            labelText: label,
            labelStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
            hintText: hintText,
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),

            suffixIcon: isPassword
              ? IconButton(
                icon: Icon(
                PasswordVisible ?? _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
                ),
                onPressed: () {
                setState(() {
                  if (label == "Password") {
                  _isPasswordVisible = !_isPasswordVisible;
                  } else if (label == "Repeat Password") {
                  _isConfirmationPasswordVisible = !_isConfirmationPasswordVisible;
                  }
                });
                },
              )
              : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.grey),
            ),
            filled: true,
            fillColor: Colors.grey[200],
            ),
          obscureText: PasswordVisible ?? isPassword,
          // decoration: InputDecoration(
          //   hintText: hintText,
          //   suffixIcon: isPassword
          //     ? IconButton(
          //       icon: Icon(
          //         PasswordVisible??_isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          //         color: Colors.grey,
          //       ),
          //       onPressed: () {
          //         setState(() {
          //           if (label == "Password") {
          //           _isPasswordVisible = !_isPasswordVisible;
          //           } else if (label == "Repeat Password") {
          //           _isConfirmationPasswordVisible = !_isConfirmationPasswordVisible;
          //           }
          //         });
          //       },
          //       )
          //     : null,
          //   border: InputBorder.none,
          //   filled: true,
          //   fillColor: Colors.grey[200],
          // ),
        ),
      ],
    );
  }
}
