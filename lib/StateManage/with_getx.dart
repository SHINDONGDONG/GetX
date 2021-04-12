import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  CountControllerWithGetX _controller = Get.put(CountControllerWithGetX()); //Getx 인스턴스를 생성해준것.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('GetX',style: TextStyle(fontSize: 50),),
          //겟빌더로 컨트롤러를 제네릭으로 선언
          GetBuilder<CountControllerWithGetX>(id : "first",builder: (controller){
            //리턴해줄 텍스트에 컨트롤러.count
            return Text('${controller.count1}',style: TextStyle(fontSize: 50),);
          }),
          GetBuilder<CountControllerWithGetX>(id:"second",builder: (controller){
            //리턴해줄 텍스트에 컨트롤러.count
            return Text('${controller.count2}',style: TextStyle(fontSize: 50),);
          }),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo
              ),
              onPressed: (){
                //GetxController에서 불러온다.
                _controller.increase("first");
              },
              child: Text('+')),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo
              ),
              onPressed: (){
                //GetxController에서 불러온다.
                _controller.increase("second");
              },
              child: Text('+')),
        ],
      ),
    );
  }
}
