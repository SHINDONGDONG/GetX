import 'package:flutter/material.dart';
import 'package:flutter_getx/StateManage/with_getx.dart';
import 'package:flutter_getx/StateManage/with_provider.dart';
import 'package:flutter_getx/controller/count_controller_with_getx.dart';
import 'package:flutter_getx/controller/count_controller_with_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SimpleStateManageMent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('단순 상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
