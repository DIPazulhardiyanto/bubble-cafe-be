import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: MyActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: MyAppbar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 16.0,
              ),
              // MyAppBar(),
              // SizedBox(height: 16.0),
              // TodoListView(),
              // SizedBox(height: 16.0),
              // SelectTypeSection(),
              // SizedBox(height: 16.0),
              // MenuItemsList()
            ],
          ),
        ));
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        width: 100.0,
        child: ClipPolygon(
            sides: 6,
            child: Container(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.book),
                    SizedBox(height: 4.0),
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ))));
  }
}

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.black45),
                  Text(
                    'Wishlist',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Cart', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
