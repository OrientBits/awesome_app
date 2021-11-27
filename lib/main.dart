import 'package:awesomeapp/pages/home_page.dart';
import 'package:awesomeapp/pages/home_page_with_fb.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'awesome app',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: (Constants.prefs.getBool('loggedIn') == true)
          ? HomePageFB()
          : LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
