import 'package:awesomeapp/lecture1.dart';
import 'package:awesomeapp/lecture2.dart';
import 'package:awesomeapp/lecture3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'awesome app',
    home: Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body:Lecture3(),
    ),
  ));
}

