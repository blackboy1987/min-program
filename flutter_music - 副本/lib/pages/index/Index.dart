import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_music/components/dialog/loading_dialog.dart';
import 'package:flutter_music/constant/MyColor.dart';
import 'package:flutter_music/pages/collect/collect.dart';
import 'package:flutter_music/pages/home/home.dart';
import 'package:flutter_music/pages/my/My.dart';
import 'package:flutter_music/pages/rank/rank.dart';

class Index extends StatefulWidget {
  Index({Key key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;

  List<Widget> pages = <Widget>[
    Home(),
    Collect(),
    Rank(),
    My(),
  ];

  @override
  void initState() {
    setState(() {
      _currentIndex = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: MyColor.indexAppBarColor,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: '收藏',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: '排行',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '我的',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          LoadingDialog.show(context);
          Timer.periodic(Duration(seconds: 5), (timer) {
            LoadingDialog.hide(context);
            timer.cancel();
          });
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
