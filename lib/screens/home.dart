import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget{
  Home(){}

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 203, 238, 0.64),
      body: SafeArea(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
                left: 32.h,
                top: 146.h,
                right: 32.h
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                /**Welcome Message*/
                Text(
                  "WELCOME TO\nNUMBER GAME",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  /*style: theme.textTheme.displayMedium!.copyWith(
                  height: 1.25
                ),*/
                ),
                SizedBox(height: 12.h),
                /**Strawberry Icon**/
                Positioned(
                    left: 0,
                    top: 0,
                    child: Image.asset(
                        'lib/assets/strawberry-removebg-preview.png'
                    )
                ),
                SizedBox(height: 84.h),
                /**START Button**/
                ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                        'START',
                        textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(237, 0, 46, 1),
                        fontFamily: 'Poppins',
                        fontSize: ScreenUtil().screenWidth * 0.04,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    )
                    )
                ),
              ],
            ),
          )
      ),
    );
  }
}
