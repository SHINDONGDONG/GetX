import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFive extends StatelessWidget {
  static String Pagename = 'five';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Five'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.parameters['param']!, //param 이라는 파라메터를 받을 거임.
            ),
          ],
        ),
      ),
    );
  }
}
