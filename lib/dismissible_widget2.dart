import 'package:flutter/material.dart';

class DismissibleWidget2 extends StatefulWidget {
  const DismissibleWidget2({Key? key}) : super(key: key);

  @override
  _DismissibleWidget2State createState() => _DismissibleWidget2State();
}

class _DismissibleWidget2State extends State<DismissibleWidget2> {
  List<int> items = List<int>.generate(100, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete),
          ),
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListTile(
            title: Text('Item ${items[index]}'),
          ),
        );
      },
    );
  }
}
