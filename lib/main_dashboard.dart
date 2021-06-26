import 'package:flutter/material.dart';

class main_dashboard extends StatefulWidget {
  const main_dashboard({Key? key}) : super(key: key);

  @override
  _main_dashboardState createState() => _main_dashboardState();
}

class _main_dashboardState extends State<main_dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCB7E1F),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
                Icons.menu
            ),
          ),
        title: Text("Chef's Paradise",
        style: TextStyle(
        letterSpacing: 1.0,
        fontSize: 30,
        fontFamily: 'Parchment',)
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
    ),
    ),
     toolbarHeight: 90, ));
  }
}
