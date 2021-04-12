import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFour extends StatefulWidget {
  static String Pagename = 'four';
  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  var title = 'Arguments';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.arguments       //값을 받아올 땐 Get.arguments 라고만 받아오면 끝
            ),
          ],
        ),
      ),
    );
  }
}
