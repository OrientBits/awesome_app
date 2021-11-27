import 'package:awesomeapp/drawer.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController changeMeController = TextEditingController();
  String myText = 'Change me!';
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Awesome App"),
        actions: [
          IconButton(
              onPressed: () {
                Constants.prefs.setBool('loggedIn', false);
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => LoginPage()));
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]['title']),
                      subtitle: Text('ID: ${data[index]['id']}'),
                      leading: Image.network(data[index]['url']),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
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
