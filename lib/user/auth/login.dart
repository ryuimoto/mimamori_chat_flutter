import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  // Widget build(BuildContext context) {
  //   // return MaterialApp(
  //   //   debugShowCheckedModeBanner: false,
  //   //   home: Image.asset('assets/icon/splash/tp.png'),
  //   // );
  //
  // }
  Widget build(BuildContext context) {
    final _passwordFocusNode = FocusNode();
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Image.asset('assets/icon/splash/tp.png'),
            TextFormField(
              decoration: InputDecoration(labelText: 'メールアドレス'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'パスワード'),
              focusNode: _passwordFocusNode,
              obscureText: true,
            ),
            RaisedButton(
              child: const Text('ログイン'),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () {},
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

