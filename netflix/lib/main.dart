import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image(
          image: AssetImage('assets/images/netix_logo.png'),
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 30),
          onPressed: () => print('Menu'),
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 30),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
