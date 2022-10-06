import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabScaffoldWidget extends StatefulWidget {
  const CupertinoTabScaffoldWidget({Key? key}) : super(key: key);

  @override
  _CupertinoTabScaffoldWidgetState createState() =>
      _CupertinoTabScaffoldWidgetState();
}

class _CupertinoTabScaffoldWidgetState
    extends State<CupertinoTabScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settins',
          ),
        ]),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return Center(
                child: Icon(
                  index == 0 ? CupertinoIcons.home : CupertinoIcons.settings,
                  size: 80,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
