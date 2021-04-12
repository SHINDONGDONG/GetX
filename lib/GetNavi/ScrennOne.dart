import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static String Pagename = 'one';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen One'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen One'),
              RaisedButton(onPressed: () => Navigator.pop(context),child: Text('뒤로가기'),)
            ],
          ),
        ),
      ),
    );
  }
}
