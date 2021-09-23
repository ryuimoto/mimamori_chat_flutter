import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:http/http.dart' as http;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('ログインフォーム'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            // Image.asset(
            //     'assets/icon/splash/tp.png'
            // ),
            TextField(
              decoration: InputDecoration(
                labelText: 'メールアドレス',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'パスワード',
              ),
            ),
            ElevatedButton(
                child: Text('ログイン'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                onPressed: (){}
            ),
          ],
        ),
      ),
    );
  }
}

Future<Map> _postLogin(Map inputValues) async {

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;

  var link = 'http://localhost/api/' + 'login/${iosDeviceInfo.identifierForVendor}';
  Map loginData = new Map();

  var response = await http.post(Uri.parse(link), body: inputValues);

  print(response.statusCode);

  if (response.statusCode == 200) {
    print('成功！');
    loginData = await jsonDecode(response.body);
  }

  return loginData;
}