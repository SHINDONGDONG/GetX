import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/dependency_controller.dart';
import 'package:flutter_getx/dependency_manage_page/get_lazy_put.dart';
import 'package:get/get.dart';

import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('의존성 주입'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //페이지를 넘어갈 때 바인딩을 해줌.
            ElevatedButton(onPressed: (){
              Get.to(GetPut(),
                  binding: BindingsBuilder((){
                    Get.put(DependencyController());  //바인딩에 같이보낼 컨트롤러를 주입 할 수 있다.
                  }));
            }, child: Text('Getput'),),

            //레이지 풋은 바인딩을 넘김과 동시에 인스턴스를 생성하지 않고.
            //사용하는 시점부터 인스턴스를 올린다.
            ElevatedButton(onPressed: (){
              Get.to(GetLazyPut(),
              binding: BindingsBuilder((){
                Get.lazyPut<DependencyController>(() => DependencyController());
              })
              );
            }, child: Text('Get.LazyPut'),),


            //비동기식으로 데이터처리 가공 후 컨트롤러를 인스턴스화 할때 필요하다.
            //기본적으로 getput과 비슷함.
            ElevatedButton(onPressed: (){
              Get.to(GetPut(),
                  binding: BindingsBuilder((){
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController();
                    });
                  })
              );
            }, child: Text('Getput Async'),),


            //create는 인스턴스를 여러개 만들어주면서 싱글톤패턴에서 벗어남.
            ElevatedButton(
              onPressed:(){
                Get.to(GetPut(),binding: BindingsBuilder((){
                  Get.create<DependencyController>(() => DependencyController());
                }));
              }
              ,child: Text('Get.Create'),),
          ],
        ),
      ),
    );
  }
}
