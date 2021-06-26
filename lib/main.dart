import 'package:flutter/material.dart';
import 'LogInPage.dart';
import 'main_dashboard.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/main',
        routes:{
          '/': (context) => LogInPage(),
          '/main': (context) => main_dashboard()
        },
        // debugShowCheckedModeBanner: false,
        // home: ChefsParadise(),
      )
  );
}

class ChefsParadise extends StatefulWidget {
  @override
  _ChefsParadiseState createState() => _ChefsParadiseState();
}

class _ChefsParadiseState extends State<ChefsParadise> {
  @override
  Widget build(BuildContext context) {
    return LogInPage();
  }
}