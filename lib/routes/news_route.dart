import 'package:flutter/material.dart';

class News extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ニュース',
        style: TextStyle(color: Color(0xffFFFFFF)),
        ),
      ),
      body: Center(child: Text('ニュース'),
      ),
    );
  }
  
}