import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'awesome app',
    home: Home(),
  ));
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(child: Text('Hi Flutter')),
    );
  }

}