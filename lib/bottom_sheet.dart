import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_flutter/utils.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // List of pages to display based on the selected index
  final List<Widget> _pages = [
    Center(child: Text("First Tab ✅✅", style: TextStyle(fontSize: 24))),
    Center(child: Text("Second Tab 🌻🌻 ", style: TextStyle(fontSize: 24))),
    Center(child: Text("Third Tab 😊😊", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: AppColors.themeColor,
        key: _bottomNavigationKey,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.linear,
        items: const [
          Icon(Icons.screen_search_desktop_rounded,
              color: AppColors.themeIconColor, size: 30),
          Icon(Icons.assignment_rounded,
              color: AppColors.themeIconColor, size: 30),
          Icon(FontAwesomeIcons.solidCircleUser,
              color: AppColors.themeIconColor, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
