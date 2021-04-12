import 'package:flutter/material.dart';
import 'package:flutter_getx/GetNavi/GetNavigation.dart';
import 'package:flutter_getx/GetNavi/ScreenFive.dart';
import 'package:flutter_getx/GetNavi/ScreenFour.dart';
import 'package:flutter_getx/GetNavi/ScreenThree.dart';
import 'package:flutter_getx/GetNavi/ScrennOne.dart';
import 'package:flutter_getx/GetNavi/ScrennTwo.dart';
import 'package:get/get.dart';

import 'Home/HomeScreen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(                  //일반적인 메테리얼앱 앞에 Get을 붙임!!
      home: SafeArea(child: HomeScreen()),
      getPages: [
        GetPage(
          name: '/',
          page: ()=>GetNavi(),
        ),
        GetPage(
          name: ScreenOne.Pagename,
          page: ()=>ScreenOne(),
        ),
        GetPage(
          name: ScreenTwo.Pagename,
          page: ()=>ScreenTwo(),
        ),
        GetPage(
          name: ScreenFour.Pagename,
          page: ()=>ScreenThree(),
        ),
        GetPage(
          name: ScreenFour.Pagename,
          page: ()=>ScreenFour(),
        ),
        GetPage(
          name: '/five/:param',
          page: ()=>ScreenFive(),
        ),
      ],
    );
  }
}
