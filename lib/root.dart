import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mimamori_chat/routes/auth/login.dart';
 
import 'routes/home_route.dart';
import 'routes/talk_route.dart';
import 'routes/timeline_route.dart';
import 'routes/setting_route.dart';
import 'routes/news_route.dart';
import 'package:http/http.dart' as http;
import 'package:device_info/device_info.dart';
 
class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);
 
  @override
  _RootWidgetState createState() => _RootWidgetState();
}
 
class _RootWidgetState extends State<RootWidget> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];
 
  static const _footerIcons = [
    Icons.home,
    Icons.textsms,
    Icons.access_time,
    Icons.content_paste,
    Icons.settings,
  ];
 
  static const _footerItemNames = [
    'ホーム',
    'トーク',
    'タイムライン',
    'ニュース',
    '設定',
  ];

  var _routes = [
    Home(),
    Talk(),
    TimeLine(),
    News(),
    Setting(),
  ];
 
  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_UpdateActiveState(0));
    for (var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
    }
  }
 
  /// インデックスのアイテムをアクティベートする
  BottomNavigationBarItem _UpdateActiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black87,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black87,
          ),
        )
    );
  }
 
  BottomNavigationBarItem _UpdateDeactiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black26,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black26,
          ),
        )
    );
  }
 
  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] =
          _UpdateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    bool login_flag;


    _getId(context).then((id) async{

      final dynamic body = {'device_id': id};
      // final String url = 'http://mimamori_chat.deve/api/login_check'; // real
      final String url = 'http://mimamori_chat.deve/api/login_check'; // practice
    
      http.Response resp = await http.post(url, body: body);

      // login_flag = resp.body;

      print(login_flag);

    });

    login_flag = false;
    // login_flag = true;

    if(!login_flag){
      return Login();
    }else{
      return Scaffold(
        body: _routes.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomNavigationBarItems,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      );
    }
  }
}

Future<String> _getId(context) async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  if (Theme.of(context).platform == TargetPlatform.iOS) {
    IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    return iosDeviceInfo.identifierForVendor; // unique ID on iOS
  } else {
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    return androidDeviceInfo.androidId; // unique ID on Android
  }
}