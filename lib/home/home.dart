/*
 * @Author: 胡路杰
 * @Date: 2021-06-21 20:54:16
 * @Descripttion: 
 * @Company: YH
 */
import 'package:flutter/material.dart';

import '../discover/index.dart';
import '../follow/index.dart';
import '../personal/index.dart';
import '../yuncun/index.dart';
import '../podcast/index.dart';

import 'PersonalDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<BottomNavigationBarItem> _barItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: '发现'),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: '播客'),
    BottomNavigationBarItem(icon: Icon(Icons.access_time), label: '我的'),
    BottomNavigationBarItem(icon: Icon(Icons.access_time), label: '关注'),
    BottomNavigationBarItem(icon: Icon(Icons.access_time), label: '云村'),
  ];

  List<Widget> _pageList = [
    DiscoverHome(),
    PodcastHome(),
    PersonalHome(),
    FollowHome(),
    YuncunHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('123121')),
      body: _pageList[_currentIndex],
      drawer: PersonalDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        currentIndex: this._currentIndex,
        items: _barItem,
        iconSize: 25,
        fixedColor: Colors.green,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
