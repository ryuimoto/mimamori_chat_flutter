
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mimamori_chat_flutter/user/chat_tile.dart';

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('トーク'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
        ],
      ),
    );
  }
}