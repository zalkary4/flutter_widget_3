import 'package:flutter/material.dart';

class ListWheelScrollViewWidget2 extends StatefulWidget {
  const ListWheelScrollViewWidget2({Key? key}) : super(key: key);

  @override
  _ListWheelScrollViewWidget2State createState() =>
      _ListWheelScrollViewWidget2State();
}

class _ListWheelScrollViewWidget2State
    extends State<ListWheelScrollViewWidget2> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 100,
      children: List.generate(
        20,
        (index) => ListTile(
          title: const Text('Flutter Mapp'),
          onTap: () {},
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.menu),
        ),
      ),
    );
  }
}
