import 'package:flutter/material.dart';
import './widgets/baseDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Radja Caffe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: textHeadColor),
        title: Text(
          'Menu Radja',
          style: TextStyle(
              color: textHeadColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              letterSpacing: 1.1),
        ),
        backgroundColor: headerColor,
      ),
      body: Center(child: Text('My Page!')),
      drawer: BaseDrawer(),
    );
  }
}

var headerColor = Colors.black.withOpacity(0.7);
var textHeadColor = Colors.yellow[900];
