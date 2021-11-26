import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lecture1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.orange, boxShadow: [
            BoxShadow(color: Colors.blue.shade200,
                blurRadius: 15.0,
                offset: Offset(2.0, 5.0))
          ],
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(10),
            gradient: const RadialGradient(colors: [Colors.cyan, Colors.blue]),
          ),
          child: const Text(
            'Hi Flutter',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        onTap: () {
          showSnackBar(context, "Tapped!");
        },
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    var snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'OK!',
        textColor: Colors.white,
        onPressed: () {},
      ),
      backgroundColor: Colors.green,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
