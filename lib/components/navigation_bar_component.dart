import 'package:coffeeapp/design/themes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: _page,
      height: 60.0,
      items: <Widget>[
        _buildNavItem(Icons.home, _page, 0),
        _buildNavItem(Icons.shopping_cart, _page, 1),
        _buildNavItem(Icons.favorite, _page, 2),
        _buildNavItem(Icons.person, _page, 3)
      ],
      color: AppThemes.principalColor,
      buttonBackgroundColor: Colors.white,
      backgroundColor: AppThemes.insideAppBackgroundColor,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}

Widget _buildNavItem(IconData icon, int pageIndex, int _page) {
  return Icon(icon,
      size: 30,
      color: _page == pageIndex ? AppThemes.principalColor : Colors.white);
}
