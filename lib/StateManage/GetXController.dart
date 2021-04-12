import 'package:flutter/material.dart';
import 'package:get/get.dart';


  //GetXController 다트파일에 따로 클래스파일을 만들어서 관리
class BuilderController extends GetxController{
  int count = 0;

  increment(){
    count++;
    update();
  }
}

class ReactiveController extends GetxController{ //리액트 컨트롤러 역시 GetController를 익스텐드
  RxInt count1 = 0.obs;          //변순선언시 .obs 형태로 선언해야됨 int역시 RxInt로
  var count2 = 0.obs;               //var 형태로도 가능



}