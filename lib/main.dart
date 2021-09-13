import 'package:flutter/material.dart';
import 'package:mimamori_chat_flutter/user/routes/home.dart';
import 'package:mimamori_chat_flutter/user/root.dart';

void main() {
  runApp(MyApp());
  // runApp(Home());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: RootWidget(),
    );
  }
}