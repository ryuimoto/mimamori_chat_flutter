
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableBehindActionPane(),
      actionExtentRatio: 0.20,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            // child: Icon(),
            backgroundColor: Colors.pink,
          ),
          title: Text('タイトル'),
          subtitle: Text('サブタイトル'),
          onTap: () => {

          },
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          color: Colors.blue,
          icon: Icons.flash_off,
          onTap: () => {},
        ),
        IconSlideAction(
          color: Colors.indigo,
          icon: Icons.volume_off,
          onTap: () => {},
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          color: Colors.black45,
          iconWidget: Text(
            '非表示',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {},
        ),
        IconSlideAction(
          color: Colors.red,
          iconWidget: Text(
            '削除',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {},
        ),
      ],
    );
  }
}