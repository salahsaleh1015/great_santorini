import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:great_santorini/view/best_hotel.dart';
import 'package:great_santorini/view/best_resturant.dart';
import 'package:great_santorini/view/home_view.dart';
import 'package:great_santorini/view/road.dart';

class NavBar extends StatefulWidget {


  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex=0;

  void _changeTab(int value){
    setState(() {
      _currentIndex=value;
    });
  }
  final List<Widget> _children = [
    HomeScreen(),
    BestHotel(),
    BestResturant(),
    Road(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
       bottomNavigationBar:CircleBottomNavigation(

       tabs: [
         TabData(icon:Icons.home),
         TabData(icon:Icons.hotel),
         TabData(icon:Icons.restaurant),
         TabData(icon: Icons.add_road)
       ],
         onTabChangedListener: _changeTab,
         initialSelection:_currentIndex,
       ),
    );
  }
}
