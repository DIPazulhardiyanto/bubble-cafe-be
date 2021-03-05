import 'package:flutter/material.dart';
import 'package:todosapp/module/addMenu/addMenu.dart';
import 'package:todosapp/module/events/events.dart';
import 'package:todosapp/module/home/home.dart';
import 'package:todosapp/routes/routes.dart';
import 'package:todosapp/widgets/tabNavigation/tabsPage.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caffe App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: TabsPage(),
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.addMenu: (context) => AddMenuPage(),
        Routes.events: (context) => EventsPage(), //PageExample
      },
    );
  }
}
