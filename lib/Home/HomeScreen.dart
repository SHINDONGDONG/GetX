import 'package:flutter/material.dart';
import 'package:flutter_getx/GetNavi/GetNavigation.dart';
import 'package:flutter_getx/StateManage/ReactiveStateManagePage.dart';
import 'package:flutter_getx/StateManage/StateManage.dart';
import 'package:flutter_getx/StateManage/simple_state_management.dart';
import 'package:flutter_getx/dependency_manage_page/dependency_page.dart';
import 'package:get/get.dart';

import 'mapPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: () {
                Get.to(GetNavi());
              },
              child:Text('GetNavi로 이동'),
                ),
              RaisedButton(onPressed: (){
                Get.to(StateManage());
              },child: Text('State Management'),),
              RaisedButton(onPressed: (){
                Get.to(SimpleStateManageMent());
              },child: Text('단순상태관리'),),
              RaisedButton(onPressed: (){
                Get.to(MapPage());
              },child: Text('map'),),
              RaisedButton(onPressed: (){
                Get.to(ReactiveStateManagePage());
              },child: Text('반응형 상태관리'),),
              RaisedButton(onPressed: (){
                Get.to(DependencyManagePage());
              },child: Text('의존성 관리'),),

            ],
          ),
        ),
      ),
    );
  }
}
