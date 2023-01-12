import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Maps'),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            child: const Text('Open Drawerr'),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          );
        }),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Item 99'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
