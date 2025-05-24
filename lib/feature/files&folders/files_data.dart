import 'package:flutter/material.dart';

class FileItem {
  final String name;
  final String date;
  final String? size;
  final IconData icon;

  FileItem({
    required this.name,
    required this.date,
    this.size,
    required this.icon,
  });
}