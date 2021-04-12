import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  List<int> mmap = [1,32,3,4,5];
  List<String> word = ["하나","둘","셋"];

  Widget con(String a){
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: Text(a,style: TextStyle(color: Colors.white),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: mmap.map((e) => Text('$e')).toList()
        ),
      ),
    );
  }
}
