import 'package:flutter/material.dart';
import 'package:flutter_getx/StateManage/GetXController.dart';
import 'package:flutter_getx/StateManage/GetxBuildController.dart';
import 'package:flutter_getx/StateManage/ReactiveController.dart';
import 'package:get/get.dart';

class StateManage extends StatefulWidget {
  @override
  _StateManageState createState() => _StateManageState();
}

class _StateManageState extends State<StateManage> {
  final controller = Get.put(BuilderController());     //final controller 선언으로 Get,put 필더컨트롤러를 넣어줌

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: (){
              Get.to(ReactiveControllerr());
            },
            child: Text('Reactive'),
            ),
            RaisedButton(onPressed: (){
              Get.to(GetxbuildController());
            },
            child: Text('on Update'),
            ),
          ],
        ),
      ),
    );
  }
}
