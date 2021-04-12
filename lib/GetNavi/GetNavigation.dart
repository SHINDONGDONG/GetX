import 'package:flutter/material.dart';
import 'package:flutter_getx/GetNavi/ScreenFive.dart';
import 'package:flutter_getx/GetNavi/ScrennTwo.dart';
import 'package:get/get.dart';

import 'ScreenFour.dart';
import 'ScreenThree.dart';
import 'ScrennOne.dart';

class GetNavi extends StatefulWidget {
  @override
  _GetNaviState createState() => _GetNaviState();
}

class _GetNaviState extends State<GetNavi> {

  int? returnVal = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: () {
                  Get.to(ScreenOne());               //전페이지에 돌아갈 수 있또록 스택을 쌓음
                },child: Text('Screen One'),),

                RaisedButton(onPressed: () {
                  Get.off(ScreenTwo());
                },child: Text('Screen Two'),),      //이동하고 전페이지로 돌아가지 못하게 파쇄함.


                RaisedButton(onPressed: () {
                  Get.offAll(ScreenTwo());
                },child: Text('Screen offAll'),),      //이동하고 모든 스택을 파쇄함.

                Text('리턴값 : $returnVal'),
                RaisedButton(
                  onPressed: () async {
                    final resp = await Get.to(ScreenThree());

                    setState(() {
                      returnVal = resp;
                    });

                },
                  child: Text('리턴값 받아오기.'),),    //리턴값 받아오기.

                RaisedButton(onPressed: () {
                  Get.to(ScreenFour(),arguments: '야근해요~');    //arguments로 값 보내기
                },
                child: Text('아규먼트 보내기 '),
                ),

                RaisedButton(onPressed: () {
                  Get.to(ScreenTwo(),
                  // transition: Transition.fade        //다양한 Transition
                  //   transition: Transition.fadeIn
                  //   transition: Transition.downToUp
                  //   transition: Transition.cupertinoDialog
                  //   transition: Transition.leftToRight
                    transition: Transition.leftToRightWithFade
                  );
                },
                child: Text('트랜지션'),
                ),

                RaisedButton(onPressed: () {
                  Get.toNamed('/five/동적 메세지 보냄',);
                },
                child: Text('toNamed '),
                ),

                RaisedButton(onPressed: () {
                  Get.snackbar(
                      '제목',
                      '내용',
                    snackPosition: SnackPosition.BOTTOM
                  );
                },
                child: Text('스낵바'),
                ),

                RaisedButton(onPressed: () {
                 Get.defaultDialog(
                   middleText: 'Dialog',
                   title: 'Title log'
                 );
                },
                child: Text('다이어로그'),
                ),

                RaisedButton(onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.white,
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text('Music'),
                            leading: Icon(Icons.music_note),
                            onTap: () => (){},
                          ),
                          ListTile(
                            title: Text('Cam'),
                            leading: Icon(Icons.videocam),
                            onTap: () => (){},
                          ),
                        ],
                      ),
                    ),
                  );
                },child: Text('bottomSheet & Wrap'),),





              ],
            ),
          )
      ),
    );
  }
}
