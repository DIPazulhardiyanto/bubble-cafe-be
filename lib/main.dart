import 'package:flutter/material.dart';
import 'package:todosapp/module/events/events.dart';
import 'package:todosapp/module/home/home.dart';
import 'package:todosapp/routes/routes.dart';

void main() {
  runApp(new MaterialApp(
    home: HomePage(),
    routes: {
      Routes.home: (context) => HomePage(),
      Routes.events: (context) => EventsPage(),
    },
  ));
}
