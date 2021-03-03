import 'package:flutter/material.dart';
import 'package:todosapp/widgets/baseDrawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textHeadColor),
        title: Text(
          'Menu Raja',
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
