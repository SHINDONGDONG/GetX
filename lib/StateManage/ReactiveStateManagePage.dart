import 'package:flutter/material.dart';
import 'package:flutter_getx/StateManage/with_getx.dart';
import 'package:flutter_getx/StateManage/with_provider.dart';
import 'package:flutter_getx/controller/count_controller_with_getx.dart';
import 'package:flutter_getx/controller/count_controller_with_provider.dart';
import 'package:flutter_getx/controller/count_controller_with_reactive.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    CountControllerWithReactive _controller = Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형 상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GetX', style: TextStyle(fontSize: 30,),),
            Obx(()=>Text(
              "${_controller.count.value}",
              style: TextStyle(fontSize: 50),
            ),),
            // GetX(
            //   builder: (_){
            //   return Text(
            //     "${Get.find<CountControllerWithReactive>().count.value}",
            //     style: TextStyle(fontSize: 50),);
            // },),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();},
              child: Text('+', style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _controller.putNumber(5);},
              child: Text('5로 변경', style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
