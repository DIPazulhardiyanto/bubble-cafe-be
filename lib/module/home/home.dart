import 'package:flutter/material.dart';
import 'package:todosapp/module/events/events.dart';
import 'package:todosapp/widgets/baseDrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            "List Menu",
            style: TextStyle(
                color: textDrawer,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 1),
          ),
          iconTheme: IconThemeData(color: textDrawer),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        drawer: BaseDrawer(),
        body: Container(
            child: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            FoodListView(),
            SizedBox(height: 16.0),
            SelectTypeSection(),
            SizedBox(height: 16.0),
            MenuItemsList(),
          ],
        )));
  }
}

class FoodListView extends StatelessWidget {
  const FoodListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[ItemCard(), ItemCard(), ItemCard(), ItemCard()],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(meatImage), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      '25% OFF',
                      style: TextStyle(
                          color: textYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      'ON FIRST 3 ORDER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: new Container(
                height: 92.0,
                width: 120.0,
                color: greenLight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(FontAwesomeIcons.starHalfAlt),
                        color: green,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => EventsPage(),
                            ))),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Special Menu',
                      style:
                          TextStyle(color: green, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => EventsPage(),
                      ));
                },
                child: new Container(
                  height: 92.0,
                  width: 120.0,
                  color: redLight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.solidClock,
                        color: red,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Book a Table',
                        style:
                            TextStyle(color: red, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => EventsPage(),
                      ));
                },
                child: new Container(
                  height: 92.0,
                  width: 120.0,
                  color: blueLight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.biking,
                        color: blue,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Delivery Order',
                        style:
                            TextStyle(color: blue, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Dishes',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              burgerImage,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: iconYellow,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text('4.5')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Special Chicken Burger',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'Chicken, Yogurt, Red chilli, Ginger paste, Carlic paste, ...',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

var headerColor = Colors.white.withOpacity(0.5);
var textHeadColor = Colors.yellow[900];
var textDrawer = Colors.yellow[900];
// IMAGES
var meatImage = 'https://i.ibb.co/5FRwHtB/unnamed.jpg';
var foodImage = 'https://i.ibb.co/qk6PzDy/London-broil.jpg';

var burgerImage =
    'https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var chickenImage =
    'https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

// COLORS
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);
