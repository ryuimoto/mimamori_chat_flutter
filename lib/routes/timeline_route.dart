import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('タイムライン',
        style: TextStyle(color: Color(0xffFFFFFF)),
        ),
      ),
      body: Center(child: Text('タイムライン'),
      ),
    );
  }
  
}