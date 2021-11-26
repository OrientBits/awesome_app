import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lecture2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Colors.blueGrey,
        width: MediaQuery.of(context).size.width/3,
        height: MediaQuery.of(context).size.height/2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
}
