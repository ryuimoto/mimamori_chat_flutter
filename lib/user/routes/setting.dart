import 'package:flutter/material.dart';
import 'package:mimamori_chat_flutter/user/root.dart';

class Setting extends StatelessWidget{
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
          title: Text('設定'),
        ),
      ),
    );
  }
}