
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('トーク'),
        ),
      ),
    );
  }
}