import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:http/http.dart' as http;

import 'package:mimamori_chat_flutter/user/routes/menu.dart';

class Login extends StatelessWidget {
  Map inputValues = new Map();
  bool loginStatus = false;

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
              onChanged: (text){
                inputValues['email'] = text;
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'パスワード',
              ),
              onChanged: (text){
                inputValues['password'] = text;
              },
            ),
            ElevatedButton(
                child: Text('ログイン'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                onPressed: () async {
                  _postLogin(inputValues);
                  loginStatus = await _postLogin(inputValues);
                  if(loginStatus){
                    Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => Menu()),
                    );
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool> _postLogin(Map inputValues) async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
  Map loginData = new Map();
  bool loginStatus = false;

  var link = 'http://localhost/api/' + 'login/${iosDeviceInfo.identifierForVendor}';

  var response = await http.post(Uri.parse(link), body: inputValues);

  if (response.statusCode == 200) {
    print('成功！');
    loginData = await jsonDecode(response.body);
    loginStatus = true;
  }

  return loginStatus;
}
