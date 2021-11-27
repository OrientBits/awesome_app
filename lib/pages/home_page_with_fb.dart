import 'package:awesomeapp/widgets/drawer.dart';
import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  Future getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    return data;
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
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(child: Text('Fetch something'));
              case ConnectionState.waiting:
              case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());

              case ConnectionState.done:
                if (snapshot.hasError || snapshot.data == null) {
                  return const Center(child: Text('Some Error Occured'));
                } else {
                  return ListView.builder(
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
                  );
                }
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(Icons.refresh),
      ),
      drawer: const MyDrawer(),
    );
  }
}
