
import 'package:flutter/material.dart';


class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required this.changeMeController,
  }) : super(key: key);

  final String myText;
  final TextEditingController changeMeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/bgsfsd.jpg', fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
          child: Text(
            myText,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(left: 16, right: 16, top: 25, bottom: 20),
          child: TextField(
            keyboardType: TextInputType.text,
            controller: changeMeController,
            decoration: const InputDecoration(
                hintText: 'Enter something',
                labelText: 'Change Me Text!',
                border: OutlineInputBorder()),
            onChanged: (val) {
            },
          ),
        )
      ],
    );

  }
}
