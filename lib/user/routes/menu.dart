

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mimamori_chat_flutter/user/root.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home:RootWidget(),
    );
  }

}