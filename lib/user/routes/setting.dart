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
        body: ListView(
          children: [
            _menuItem('プロフィール', Icon(Icons.accessibility)),
          ],
        ),
      ),
    );
  }
}

Widget _menuItem(String title,Icon icon){
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0,color: Colors.grey))
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: icon,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    ),
    onTap: (){
      print('onTap called');

    },
  );
}