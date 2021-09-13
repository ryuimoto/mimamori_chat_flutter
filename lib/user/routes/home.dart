import 'package:flutter/material.dart';
import 'package:mimamori_chat_flutter/user/root.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('ホーム'),
    //   ),
    //
    // );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: Center(child: Text('ホーム')),
    );
  }
}