import 'package:flutter/material.dart';
import 'package:todosapp/Service/ApiService.dart';
import 'package:todosapp/Views/addMenu/addMenu.dart';
import 'package:todosapp/Views/events/events.dart';
import 'package:todosapp/Views/home/home.dart';
import 'package:todosapp/routes/routes.dart';
import 'package:todosapp/widgets/tabNavigation/tabsPage.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      title: 'Caffe App',
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      home: TabsPage(),
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.addMenu: (context) => AddMenuPage(),
        Routes.events: (context) => EventsPage(), //PageExample
      },
    );
  }
}
