import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:e_mart/screens/home_screen.dart';
import 'package:e_mart/screens/product_details_screen.dart';
import 'package:e_mart/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int indexNumber = 0;
  final List screens=[HomeScreen(),ProductDetailScreen(),ProductListScreen(),Text("No Data"),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens.elementAt(indexNumber),
     bottomNavigationBar: SizedBox(
  height: 60, // enough for icon + text
  child: BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        navIcon(indexNum: 0, icon: Icons.home, text: 'Home'),
        navIcon(indexNum: 1, icon: Icons.search, text: 'Search'),
        navIcon(indexNum: 2, icon: Icons.notifications, text: 'Notify'),
        navIcon(indexNum: 3, icon: Icons.person, text: 'Profile'),
      ],
    ),
  ),
),
    );
  }

  Widget navIcon({
    required int indexNum,
    required IconData icon,
    required String text,
  }) {
    final bool isSelected = indexNumber == indexNum;

    return GestureDetector(
      onTap: () {
        setState(() {
          indexNumber = indexNum;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24,
            color: isSelected ?AppColors.primaryBrown : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ?AppColors.primaryBrown : Colors.grey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
