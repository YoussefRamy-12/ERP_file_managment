import 'package:file_manager/feature/files&folders/files_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> bottomSheet(context, FileItem file) {
  return showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    shape: RoundedRectangleBorder(
      // Set the border radius for the bottom sheet
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(file.icon,
                    size: 30,
                    color: file.icon == Icons.folder
                        ? Colors.blue
                        : Colors.red),
                title: Text(file.name,
                    style: TextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.bold)),
                subtitle: Text("Modified ${file.date}",
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Share  ')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.manage_accounts),
                title: Text("Manage access"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Manage access  ')),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Copy link"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Copy link ')),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Rename"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Rename  ')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.drive_file_move),
                title: Text("Move"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Move  ')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Details & activity"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Details & activity  ')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Add to Home screen"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Add to Home screen  ')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Remove"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Remove  ')),
                  );
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}