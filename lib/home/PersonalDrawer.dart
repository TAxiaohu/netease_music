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
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // DrawerHeader(child: Text('21312')),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('是非之胡'),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    Icon(Icons.qr_code_scanner_rounded),
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                //抽屉里面一个list部件
                padding: EdgeInsets.all(0), //顶部padding为0
                children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('设置'),
                    onTap: () {
                      print('点击率');
                    },
                  ),
                  ListTile(
                    title: Text('设置'),
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.check_box),
                    title: Text("任务清单"),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
