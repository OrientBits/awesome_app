import 'package:awesomeapp/pages/home_page.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'awesome app',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: LoginPage(),
      routes: {
        '/login':(context) => LoginPage(),
        '/home':(context) => HomePage(),
      },
    );
  }
}
