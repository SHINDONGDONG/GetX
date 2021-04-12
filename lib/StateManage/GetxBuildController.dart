import 'package:flutter/material.dart';
import 'package:flutter_getx/StateManage/GetXController.dart';
import 'package:get/get.dart';

class GetxbuildController extends StatefulWidget {
  @override
  _GetxbuildControllerState createState() => _GetxbuildControllerState();
}

class _GetxbuildControllerState extends State<GetxbuildController> {
  final controller = Get.put(BuilderController());

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
            Text('OnUpdate'),            //상태관리 빌더는 가능한 온 업데이트를 사용하자
            GetBuilder<BuilderController>( //GetBuilder 제네릭 안에는 호출하고싶은 컨트롤러를 선언
              //init안에 buildercontroller를 집어넣음
                builder: (_){
                  return Text('count : ${_.count}');
                }),
            RaisedButton(onPressed: (){
              controller.increment(); //find에 우리가 찾고싶은 컨트롤러를 집어넣는다.
              //이후 우리가만든 incremnet 함수를 호출하여 버튼이 눌릴때마다 호출
            },
              child: Text('Count 업!'),
            ),

          ],
        ),
      ),
    );
  }
}
