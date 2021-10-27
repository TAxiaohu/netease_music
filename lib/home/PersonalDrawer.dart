/*
 * @Author: 胡路杰
 * @Date: 2021-10-27 19:58:34
 * @Descripttion: 
 * @Company: YH
 */
import 'package:flutter/material.dart';

class PersonalDrawer extends StatefulWidget {
  @override
  DrawerState createState() => DrawerState();
}

class DrawerState extends State<PersonalDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Text('drawer'),
      ),
    );
  }
}
