import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String url = 'https://stay-homes.net/api/return_json';
    // print(http.get(url));
    http.get(url)
    .then((response){
      print("${response.body}");
    });

    return MaterialApp(
      title: 'Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ログインフォーム',
          style: TextStyle(color: Color(0xffFFFFFF)),
          ),
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {

  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/splash/tp.png'),
              height: 170,
            ),
            new TextField(
              enabled: true,
              decoration: InputDecoration(
                labelText: "メールアドレス",
              ),
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.red),
              obscureText: false,
              maxLines:1 ,
              onChanged: _handleText,
            ),
            new TextField(
              enabled: true,
              decoration: InputDecoration(
                labelText: "パスワード",
              ),
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.red),
              obscureText: false,
              maxLines:1 ,
              onChanged: _handleText,
            ),
            RaisedButton(
              child: const Text('ログイン'),
              color: Colors.orange,
              
              textColor: Colors.white,
              onPressed: () {},
              shape: const StadiumBorder(),
            ),

          ],
        )
        
    );
  }

}

