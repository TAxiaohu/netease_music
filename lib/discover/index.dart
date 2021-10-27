/*
 * @Author: 胡路杰
 * @Date: 2021-10-27 19:38:20
 * @Descripttion: 
 * @Company: YH
 */
import 'package:flutter/material.dart';

class DiscoverHome extends StatefulWidget {
  @override
  _DiscoverHomeState createState() => _DiscoverHomeState();
}

class _DiscoverHomeState extends State<DiscoverHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1231'),
        leading: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.ac_unit_sharp),
        ),
      ),
      body: Text('发现'),
    );
  }
}
