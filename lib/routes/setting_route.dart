import 'package:flutter/material.dart';

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('設定',
        style: TextStyle(color: Color(0xffFFFFFF)),
        ),
      ),
      body: Center(child: Text('設定'),
      ),
    );
  }
  
}