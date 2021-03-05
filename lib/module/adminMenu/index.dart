import 'package:flutter/material.dart';
import 'package:todosapp/module/adminMenu/homeAdmin.dart';
import 'package:todosapp/module/home/pageSpecialMenu.dart';

class IndexAdmin extends StatelessWidget {
  static const String routeName = '/home';

  IndexAdmin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = PageAdmin();
          if (settings.name == '2') page = PageSpecialMenu();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
