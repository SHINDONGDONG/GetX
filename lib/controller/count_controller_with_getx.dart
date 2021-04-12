import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController{

  int count1 = 0;
  int count2 = 0;
  void increase(String id){
    if(id == "first"){
    count1++;
    update([id]);
    }else if(id=="second"){
      count2++;
      update([id]);
    }
  }
}