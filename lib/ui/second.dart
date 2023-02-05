import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/const/AppColors.dart';
import 'package:flutter_ecommerce/ui/bottom_nav_controller.dart';
import 'package:flutter_ecommerce/ui/decore.dart';
import 'package:flutter_ecommerce/ui/registration_screen.dart';
import 'package:flutter_ecommerce/widgets/customButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            Card(
                //child: Material(
                elevation: 18.0,
                // borderRadius: BorderRadius.circular(28),
                shape: Border.all(color: AppColors.deep_orange, width: 4.0),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => DecoreScreen()));
                  },
                  child: Image.asset(
                    "assets/image/Vector (2).png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                )),
            //),
            Card(
              //child: Material(
              elevation: 18.0,
              // borderRadius: BorderRadius.circular(28),
              shape: Border.all(color: AppColors.deep_orange, width: 4.0),
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => DecoreScreen()));
                },
                child: Image.asset(
                  "assets/image/emojione-monotone_womans-clothes.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
