import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  static String Pagename = 'two';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen Two'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen Two'),
              RaisedButton(onPressed: () => Get.back(),child: Text('뒤로가기'),)

            ],
          ),
        ),
      ),
    );
  }
}
