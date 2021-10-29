/*
 * @Author: 胡路杰
 * @Date: 2021-07-14 16:52:21
 * @Descripttion: 
 * @Company: YH
 */
import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        'home': (context) => Home(),
      },
    );
  }
}
