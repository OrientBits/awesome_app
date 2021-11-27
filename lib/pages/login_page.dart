
import 'package:awesomeapp/bg.dart';
import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Page')),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    color: Colors.white.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Enter UserName',
                                    labelText: 'Username'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: 'Enter Password',
                                    labelText: 'password'),
                              ),
                            ],
                          )),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Constants.prefs.setBool('loggedIn', true);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));

                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            child: const Text('Sign In'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
