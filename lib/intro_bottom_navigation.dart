import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class IntroBottomNavigation extends StatefulWidget
{
  @override
  State<IntroBottomNavigation> createState()
  {
    return _IntroBottomNavigation();
  }
}

class _IntroBottomNavigation extends State<IntroBottomNavigation>
{
  Widget build(context)

  {
    return CurvedNavigationBar(items: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.car_rental_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.skip_next),
        )
      ]);
  }
}