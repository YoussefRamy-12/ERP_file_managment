import 'package:file_manager/core/widgets/build_files_view.dart';
import 'package:file_manager/core/widgets/floating_button.dart';
import 'package:file_manager/core/widgets/item_build.dart';
import 'package:file_manager/core/widgets/search.dart';
import 'package:file_manager/feature/files&folders/files_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilesScreen extends StatefulWidget {
  const FilesScreen({super.key});

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  final List<FileItem> files = [
    FileItem(
        name: "Colab Notebooks", date: "April 19, 2025", icon: Icons.folder),
    FileItem(
        name: "Data Science Project (Team 29)",
        date: "Dec 8, 2024",
        icon: Icons.folder),
    FileItem(name: "ITI Training", date: "Oct 10, 2024", icon: Icons.folder),
    FileItem(name: "IMG_1234.png", date: "May 6, 2024", icon: Icons.image),
    FileItem(name: "IMG_1235.png", date: "May 6, 2024", icon: Icons.image),
    FileItem(name: "IMG_1289.png", date: "May 6, 2024", icon: Icons.image),
    FileItem(name: "IMG_1652.png", date: "May 6, 2024", icon: Icons.image),
  ];

  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(context: context),
      backgroundColor: Colors.white,
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
                Text(
                  "Name",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_drop_down),
                Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isGridView = !isGridView;
                    });
                  },
                  icon: Icon(isGridView ? Icons.list : Icons.grid_view),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: buildFilesView(isGridView,files),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search in App",
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }

  

  

  

  
}
// class FileItem {
//   final String name;
//   final String date;
//   final IconData icon;

//   FileItem({required this.name, required this.date, required this.icon});
// }
