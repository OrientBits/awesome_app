import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          // DrawerHeader(
          //   child: Text(
          //     'Hi i am drawer',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(color: Colors.purpleAccent),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('Ramshek'),
            accountEmail: Text('ramshekrana@gmail.com'),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://qph.fs.quoracdn.net/main-thumb-901174797-200-nnblylbdxzbjsvcpposkpqueuhnsravb.jpeg')),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Books'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Market'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }

}