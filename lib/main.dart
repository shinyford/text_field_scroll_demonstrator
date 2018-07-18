import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Text Field Scroll Demonstrator',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Container(
            child: TabBar(
              indicator: BoxDecoration(),
              labelStyle: TextStyle(fontSize: 10.0),
              labelColor: Colors.teal,
              unselectedLabelColor: Colors.grey[900],
              tabs: [
                Tab(text: 'first', icon: Icon(Icons.album)),
                Tab(text: 'second', icon: Icon(Icons.folder)),
                Tab(text: 'third', icon: Icon(Icons.flag))
              ]
            )
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildPage(context),
              _buildPage(context),
              _buildPage(context),
            ]
          )
        )
      )
    );
  }

  Widget _buildPage(BuildContext context) {
    return new Material(
      child: new Column(
        children: [
          Expanded(
            child: Column(
              children: [
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
                new Text('This is a line of text'),
              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 4.0, right: 4.0),
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey[800])
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(4.0)
              )
            )
          )
        ]
      )
    );
  }
}
