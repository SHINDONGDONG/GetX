import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/dependency_controller.dart';
import 'package:get/get.dart';

class GetLazyPut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetLazyPut'),
      ),
      body: RaisedButton(
        onPressed: (){
          Get.find<DependencyController>().increase();
        },
        child: Text('aaa'),
      ),
    );
  }
}
