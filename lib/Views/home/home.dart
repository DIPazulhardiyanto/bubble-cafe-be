import 'package:flutter/material.dart';
import 'package:todosapp/Views//home/pageIndex.dart';
import 'package:todosapp/Views//home/pageSpecialMenu.dart';
import 'package:todosapp/Views/home/productList.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          // Widget page = PageIndex();
          Widget page = ProductListSc();
          if (settings.name == '2') page = PageSpecialMenu();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
