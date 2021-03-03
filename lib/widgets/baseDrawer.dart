import 'package:flutter/material.dart';
import '../routes/routes.dart';

class BaseDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black.withOpacity(0.5),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(
                icon: Icons.home_outlined,
                text: 'Home',
                onTap: () =>
                    Navigator.pushReplacementNamed(context, Routes.home)),
            Divider(
              color: textDrawer,
            ),
            _createDrawerItem(
                icon: Icons.assignment_outlined,
                text: 'Pesanan Anda',
                onTap: () => Navigator.pushNamed(context, '/event')),
            Divider(
              color: textDrawer,
            ),
            _createDrawerItem(
                icon: Icons.menu_book_outlined,
                text: 'Tambah Menu baru',
                onTap: () =>
                    Navigator.pushReplacementNamed(context, Routes.events)),
            Divider(
              color: textDrawer,
            ),
          ],
        ),
      ),
    );
  }

  var meatImage = 'https://i.ibb.co/5FRwHtB/unnamed.jpg';
  var textYellow = Color(0xFFf6c24d);
  var textDrawer = Colors.yellow[900];
  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(meatImage), fit: BoxFit.cover)),
        child: Stack(children: <Widget>[
          Container(
            height: 170.0,
            width: 320.0,
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
                  'Radja Caffe',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, letterSpacing: 1.1),
                )
              ],
            ),
          )
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: textDrawer,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                  color: textDrawer,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  letterSpacing: 1.1),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
