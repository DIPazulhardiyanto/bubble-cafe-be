import 'package:flutter/material.dart';
import 'package:todosapp/mixins/validation.dart';
import 'package:todosapp/widgets/baseDrawer.dart';

var textDrawer = Colors.yellow[900];

class AddMenuPage extends StatelessWidget {
  static const String routeName = '/addmenu';
  AddMenuPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            "Add New Menu",
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
        body: AddMenuScreen());
  }
}

class AddMenuScreen extends StatefulWidget {
  createState() {
    return AddMenuScreenState();
  }
}

class AddMenuScreenState extends State<AddMenuScreen> with Validation {
  final formKey = GlobalKey<FormState>();
  String nameJudul = '';
  String descriptionProduct = '';
  String ratingProduct = '';
  String priceProduct = '';

  createState() {
    return AddMenuScreenState();
  }

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            nameMenu(),
            description(),
            rating(),
            price(),
          ],
        ),
      ),
    );
  }
}

Widget nameMenu() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Judul Menu'),
  );
}

Widget description() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Deskripsi Menu'),
  );
}

Widget rating() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Rating'),
  );
}

Widget price() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Harga'),
  );
}
