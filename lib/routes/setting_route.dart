import 'package:flutter/material.dart';

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム',
        style: TextStyle(color: Color(0xffFFFFFF)),
        ),
      ),
      body: Center(child: Text('ホーム'),
      ),
    );
  }
  
}