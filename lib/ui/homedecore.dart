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

class HomeDecoreScreen extends StatefulWidget {
  @override
  _HomeDecoreScreenState createState() => _HomeDecoreScreenState();
}

class _HomeDecoreScreenState extends State<HomeDecoreScreen> {
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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 10,
        toolbarHeight: 50.w,

        title: Text(
          "Choose Your Room",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Container(
        // padding: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: Material(
                color: Colors.white,
                elevation: 18.0,
                borderRadius: BorderRadius.circular(28.h),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // shape: Border.all(color: AppColors.deep_orange, width: 2.0),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => HomeScreen()));
                  },
                  //splashColor: AppColors.deep_orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Vector (3).png",
                          height: 50.h,
                          width: 50.h,
                          //fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        //Ink.image(
                        //image: NetworkImage(
                        //"assets/image/Vector (2).png",
                        //),

                        // ),
                        SizedBox(
                          height: 10.w,
                          width: 30.w,
                          child: const Align(
                            alignment: Alignment.center,
                            //alignment: Alignment.center,
                            //child: Padding(
                            //padding: EdgeInsets.only(
                            // left: 20.w, top: 15.w, bottom: 0.w, right: 20.w),
                            // ),
                          ),
                        ),
                        Text(
                          "Bed Room",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: AppColors.deep_orange),
                        ),
                        // SizedBox(
                        //   height: 6,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: Material(
                color: Colors.white,
                elevation: 18.0,
                borderRadius: BorderRadius.circular(28.h),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // shape: Border.all(color: AppColors.deep_orange, width: 2.0),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  //splashColor: AppColors.deep_orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Group (1).png",
                          height: 50.h,
                          width: 50.h,
                          //fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        //Ink.image(
                        //image: NetworkImage(
                        //"assets/image/Vector (2).png",
                        //),

                        // ),
                        SizedBox(
                          height: 10.w,
                          width: 30.w,
                          child: const Align(
                            alignment: Alignment.center,
                            //alignment: Alignment.center,
                            //child: Padding(
                            //padding: EdgeInsets.only(
                            // left: 20.w, top: 15.w, bottom: 0.w, right: 20.w),
                            // ),
                          ),
                        ),
                        Text(
                          "Living Room",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: AppColors.deep_orange),
                        ),
                        // SizedBox(
                        //   height: 6,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(6.0),
              child: Material(
                color: Colors.white,
                elevation: 18.0,
                borderRadius: BorderRadius.circular(28.h),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // shape: Border.all(color: AppColors.deep_orange, width: 2.0),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  //splashColor: AppColors.deep_orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Group.png",
                          height: 80.h,
                          width: 80.h,
                          //fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        //Ink.image(
                        //image: NetworkImage(
                        //"assets/image/Vector (2).png",
                        //),

                        // ),
                        SizedBox(
                          height: 20.w,
                          width: 80.w,
                          child: const Align(
                            alignment: Alignment.center,
                            //alignment: Alignment.center,
                            //child: Padding(
                            //padding: EdgeInsets.only(
                            // left: 20.w, top: 15.w, bottom: 0.w, right: 20.w),
                            // ),
                          ),
                        ),
                        Text(
                          "Dining Room",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: AppColors.deep_orange),
                        ),
                        // SizedBox(
                        //   height: 6,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(6.0),
              child: Material(
                color: Colors.white,
                elevation: 18.0,
                borderRadius: BorderRadius.circular(28.h),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // shape: Border.all(color: AppColors.deep_orange, width: 2.0),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  //splashColor: AppColors.deep_orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Group (2).png",
                          height: 80.h,
                          width: 80.h,
                          //fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        //Ink.image(
                        //image: NetworkImage(
                        //"assets/image/Vector (2).png",
                        //),

                        // ),
                        SizedBox(
                          height: 20.w,
                          width: 80.w,
                          child: const Align(
                            alignment: Alignment.center,
                            //alignment: Alignment.center,
                            //child: Padding(
                            //padding: EdgeInsets.only(
                            // left: 20.w, top: 15.w, bottom: 0.w, right: 20.w),
                            // ),
                          ),
                        ),
                        Text(
                          "Study Room",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: AppColors.deep_orange),
                        ),
                        // SizedBox(
                        //   height: 6,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(6.0),
              child: Material(
                color: Colors.white,
                elevation: 18.0,
                borderRadius: BorderRadius.circular(28.h),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // shape: Border.all(color: AppColors.deep_orange, width: 2.0),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  //splashColor: AppColors.deep_orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Vector (4).png",
                          height: 80.h,
                          width: 80.h,
                          //fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        //Ink.image(
                        //image: NetworkImage(
                        //"assets/image/Vector (2).png",
                        //),

                        // ),
                        SizedBox(
                          height: 20.w,
                          width: 80.w,
                          child: const Align(
                            alignment: Alignment.center,
                            //alignment: Alignment.center,
                            //child: Padding(
                            //padding: EdgeInsets.only(
                            // left: 20.w, top: 15.w, bottom: 0.w, right: 20.w),
                            // ),
                          ),
                        ),
                        Text(
                          "Office Room",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: AppColors.deep_orange),
                        ),
                        // SizedBox(
                        //   height: 6,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
