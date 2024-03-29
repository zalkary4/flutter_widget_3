import 'package:flutter/material.dart';

class NavigationBarWidget2 extends StatefulWidget {
  const NavigationBarWidget2({Key? key}) : super(key: key);

  @override
  _NavigationBarWidget2State createState() => _NavigationBarWidget2State();
}

class _NavigationBarWidget2State extends State<NavigationBarWidget2> {
  int currentIndex = 0;
  static const List body = [
    Icon(Icons.home, size: 50),
    Icon(Icons.search, size: 50),
    Icon(Icons.person, size: 50)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body.elementAt(currentIndex),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Person'),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
