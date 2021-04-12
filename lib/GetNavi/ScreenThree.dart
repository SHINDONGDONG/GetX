import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  static String Pagename = 'three';
  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int/*?*//*!*//*?*/ radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                  groupValue: radioVal,
                  value: 0,
                  onChanged: (dynamic value) {
                    setState(() {
                    radioVal = value;
                    });
                  },
                ),
                Text('0'),
              ],
            ),
            Row(
              children: [
                Radio(
                  groupValue: radioVal,
                  value: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      radioVal = value;
                    });
                  },
                ),
                Text('1'),
              ],
            ),
            Row(
              children: [
                Radio(
                  groupValue: radioVal,
                  value: 2,
                  onChanged: (dynamic value) {
                    setState(() {
                      radioVal = value;
                    });
                  },
                ),
                Text('2'),
              ],
            ),
            RaisedButton(onPressed: (){
              Get.back(result : radioVal);
            },child: Text('뒤로가기'),),
          ],
        ),
      ),
    );
  }
}
