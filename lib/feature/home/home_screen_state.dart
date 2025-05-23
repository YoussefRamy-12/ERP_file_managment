import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_manager/core/theming/colors.dart';
import 'package:file_manager/core/theming/styles.dart';
import 'package:file_manager/feature/home/account/account_screen.dart';
import 'package:file_manager/feature/home/home_screen.dart';
import 'package:file_manager/feature/home/statistics_screen.dart';

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({super.key});

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  int _selectedIndex = 0; // Track selected bottom nav item
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab
    });
  }

  final List<Widget> screens = [
    HomeScreen(),
    StatisticsScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBackGround,
      body: IndexedStack(
        index: _selectedIndex,
        children: screens, // Display the selected screen
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: MyColors.myLightGreen, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        backgroundColor: MyColors.mainBackGround,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
            MyTextStyle.font14SemiBold(context, MyColors.myLightGreen),
        unselectedLabelStyle: MyTextStyle.font11SemiBold(context, Colors.grey),
        selectedIconTheme: IconThemeData(
          color: MyColors.myLightGreen, // Selected icon color
          size: 30.sp, // Adjust icon size
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), // No explicit color
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_outlined),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
