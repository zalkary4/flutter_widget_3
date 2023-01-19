import 'package:flutter/material.dart';

class ListTileWidget2 extends StatefulWidget {
  const ListTileWidget2({Key? key}) : super(key: key);

  @override
  _ListTileWidget2State createState() => _ListTileWidget2State();
}

class _ListTileWidget2State extends State<ListTileWidget2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: const Text('Flutter Mapp'),
        tileColor: Colors.orangeAccent,
        onTap: () {},
        leading: const Icon(Icons.person),
        trailing: const Icon(Icons.access_alarm),
      ),
    );
  }
}
