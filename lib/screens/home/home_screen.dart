import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/const/AppColors.dart';
import 'package:flutter_ecommerce/screens/home/home_screen.dart';
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
import 'package:flutter_ecommerce/ui/product.dart';
import 'package:flutter_ecommerce/ui/registration_screen.dart';
import 'package:flutter_ecommerce/widgets/customButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({Key? key}) : super(key: key);
  final _pages = [
    Home(),
    Favourite(),
    Cart(),
    Profile(),
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // backgroundColor: Colors.transparent,
      //  toolbarHeight: 40.w,
      // title: Text(
      //  "Explore",
      // style: Theme.of(context)
      //  .textTheme
      // .headline5!
      //.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
      // ),

      // "best Outfits for you",
      //  style: TextStyle(fontSize: 18),
      // ),
      // ),
      // leading: IconButton(
      //   onPressed: () {},
      //  icon: SvgPicture.asset("assets/icons/menu.svg"),
      // ),
      //  title: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //    SvgPicture.asset("assets/icons/Location.svg"),
      //   const SizedBox(width: defaultPadding / 2),
      //   Text(
      //    "15/2 New Texas",
      //     style: Theme.of(context).textTheme.bodyText1,
      //   ),
      //   ],
      //  ),
      // actions: [
      //   IconButton(
      //    icon: SvgPicture.asset("assets/icons/Notification.svg"),
      //    onPressed: () {},
      //  ),
      //  ],
      //  ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding / 4),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      //body: _pages[_currentIndex],
    );
  }
}
