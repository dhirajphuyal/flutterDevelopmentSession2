import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personality Quiz App"),
      ),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.person),
              accountName: Text("Dhiraj Phuyal"),
              accountEmail: Text("dhiraj.phuyal@deerwalk.edu.np")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            trailing: Icon(Icons.beach_access),
            title: Text("About us"),
          ),
        ],
      )),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Positioned(
            left: 100.0,
            bottom: 100.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
