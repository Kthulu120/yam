

import 'package:app/util/consts.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  BottomNavBar({ Key key, this.index = 0 }) : super(key: key);

  final int index;
  final List<String> navigationItems = [DISCOVER_ROUTE, MESSAGE_ROUTE, PROFILE_ROUTE];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (newIndex) => Navigator.pushNamed(context, navigationItems[newIndex]),
      currentIndex: index,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home"),
          activeIcon: Icon(Icons.home, color: Color(0xFF00CCC0),), ),
        BottomNavigationBarItem(icon: Icon(Icons.message), title: Text("Messaging"),
          activeIcon: Icon(Icons.search, color: Color(0xFF00CCC0),)),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile"), 
          activeIcon: Icon(Icons.receipt, color: Color(0xFF00CCC0),)),
      ],
      );
  }
}