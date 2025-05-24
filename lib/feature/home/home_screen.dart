import 'package:file_manager/core/widgets/build_files_view.dart';
import 'package:file_manager/core/widgets/floating_button.dart';
import 'package:file_manager/core/widgets/search.dart';
import 'package:file_manager/feature/files&folders/files_data.dart';
import 'package:file_manager/feature/files&folders/folders_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_manager/core/theming/colors.dart';
import 'package:file_manager/core/theming/styles.dart';
import 'package:file_manager/core/widgets/app_icon_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Folder> folders = [
    Folder(name: "FCIS 2025", date: "April 19, 2020", files: 10),
    Folder(name: "DataCamp", date: "April 19, 2020", files: 10),
  ];

  final List<FileItem> files = [
    FileItem(
      name: "project discussion.docs",
      date: "April 19, 2020",
      size: "300kb",
      icon: Icons.description,
    ),
    FileItem(
      name: "ERP Assignments.pdf",
      date: "April 20, 2025",
      size: "520kb",
      icon: Icons.picture_as_pdf,
    ),
    FileItem(
      name: "MongoDB Lab1.ppt",
      date: "May 7, 2025",
      size: "1.2mb",
      icon: Icons.slideshow,
    ),
  ];

  bool isGridView = false; // Add this variable to toggle between views

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(context: context),
      backgroundColor: MyColors.mainBackGround,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            SearchWidget(),
            SizedBox(height: 20.h),
            Row(
              children: [
                _buildSectionTitle("Recent files"),
                Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isGridView =
                          !isGridView; // Toggle between list and grid view
                    });
                  },
                  icon: Icon(isGridView ? Icons.list : Icons.grid_view),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            _buildFolders(),
            SizedBox(height: 20.h),
            Expanded(
              child: buildFilesView(isGridView,
                  files), // Use the buildFilesView function to display files
            ), // Ensure files list doesn't overflow
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: MyTextStyle.font16SemiBold(context),
      overflow: TextOverflow.ellipsis, // Prevent text overflow
    );
  }

  Widget _buildFolders() {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: folders.length,
        separatorBuilder: (_, __) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          final folder = folders[index];
          return _buildFolderItem(folder);
        },
      ),
    );
  }

  Widget _buildFolderItem(Folder folder) {
    return Container(
      width: 120.w,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.folder, size: 40, color: Colors.blue),
          Spacer(),
          Text(
            folder.name,
            style: MyTextStyle.font14Bold(context),
            overflow: TextOverflow.ellipsis, // Prevent text overflow
          ),
          Text(
            "${folder.date} • ${folder.files} files",
            style: MyTextStyle.font12RegularGrey(context),
            overflow: TextOverflow.ellipsis, // Prevent text overflow
          ),
        ],
      ),
    );
  }

}

