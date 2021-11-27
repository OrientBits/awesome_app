import 'package:awesomeapp/drawer.dart';
import 'package:flutter/material.dart';
import '../change_name_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController changeMeController = TextEditingController();
  String myText = 'Change me!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Card(
              child: ChangeNameCard(
                  myText: myText, changeMeController: changeMeController)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myText = changeMeController.text;
          });
        },
        tooltip: 'Add',
        child: const Icon(Icons.refresh),
      ),
      drawer: const MyDrawer(),
    );
  }
}
