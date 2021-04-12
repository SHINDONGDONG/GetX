import 'package:flutter/material.dart';
import 'package:flutter_getx/StateManage/GetXController.dart';
import 'package:get/get.dart';

class ReactiveControllerr extends StatefulWidget {
  @override
  _ReactiveControllerrState createState() => _ReactiveControllerrState();
}

class _ReactiveControllerrState extends State<ReactiveControllerr> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Text('OnUpdate'),
      ),
    );
  }
}
