import 'package:file_manager/file_mangament.dart';
import 'package:flutter/material.dart';


import 'core/routing/app_router.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    runApp(
        FileManagment(
          appRouter: AppRouter(),
    ));
  }

