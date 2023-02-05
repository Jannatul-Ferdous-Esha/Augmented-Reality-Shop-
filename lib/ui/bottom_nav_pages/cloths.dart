import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/const/AppColors.dart';
import 'package:flutter_ecommerce/ui/bottom_nav_pages/cart.dart';
import 'package:flutter_ecommerce/ui/bottom_nav_pages/favourite.dart';
import 'package:flutter_ecommerce/ui/bottom_nav_pages/home.dart';
import 'package:flutter_ecommerce/ui/bottom_nav_pages/profile.dart';
import 'package:flutter_ecommerce/ui/decore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/const/AppColors.dart';
import 'package:flutter_ecommerce/ui/bottom_nav_controller.dart';
import 'package:flutter_ecommerce/ui/registration_screen.dart';
import 'package:flutter_ecommerce/widgets/customButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/screens/home/home_screen.dart';

class ClothScreen extends StatefulWidget {
  @override
  _ClothScreenState createState() => _ClothScreenState();
}

class _ClothScreenState extends State<ClothScreen> {
  final _pages = [
    Home(),
    Favourite(),
    Cart(),
    Profile(),
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fasion',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: HomeScreen(),
    );

    bottomNavigationBar:
    BottomNavigationBar(
      elevation: 5,
      selectedItemColor: AppColors.deep_orange,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      selectedLabelStyle:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: "Favourite"),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Person",
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          print(_currentIndex);
        });
      },
    );
//body: _pages[_currentIndex],
//);
  }
}
