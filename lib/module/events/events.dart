import 'package:flutter/material.dart';
import 'package:todosapp/widgets/baseDrawer.dart';
import 'package:todosapp/widgets/bottomNav.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = '/events';
  EventsPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Events"),
        ),
        drawer: BaseDrawer(),
        body: Center(child: Text("Events")),
        bottomNavigationBar: BottomNav()
    );
  }
}
