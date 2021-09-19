import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class Login extends StatelessWidget{
  final myFocusNode = FocusNode();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Image.asset('assets/icon/splash/tp.png'),
            TextFormField(
              decoration: InputDecoration(labelText: 'メールアドレス'),
              onChanged: (text){
                email = text;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'パスワード'),
              obscureText: true,
              onChanged: (text){
                password = text;
              },
            ),
            RaisedButton(
              child: const Text('ログイン'),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () async {
                _getLoginData();
              },
            ),
          ],
        ),
        // child: TextFormField(
        //   decoration: InputDecoration(labelText: 'Title'),
        // ),
      ),
    );
  }
}

Future<void> _getLoginData() async{
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;

  print(iosDeviceInfo);


}