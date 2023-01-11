import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

class CupertinoTabWidget extends StatefulWidget {
  const CupertinoTabWidget({Key? key}) : super(key: key);

  @override
  _CupertinoTabWidgetState createState() => _CupertinoTabWidgetState();
}

class _CupertinoTabWidgetState extends State<CupertinoTabWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settingss',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Icon(
                  index == 0 ? CupertinoIcons.home : CupertinoIcons.settings),
            );
          },
        );
      },
    );
  }
}
